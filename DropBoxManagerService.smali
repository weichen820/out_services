.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$1;,
        Lcom/android/server/DropBoxManagerService$2;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method static synthetic -get0(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DropBoxManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 165
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 97
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 101
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 102
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 103
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 106
    iput-boolean v2, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 114
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 178
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 180
    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 777
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 783
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x2710

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    .line 784
    const/4 v0, 0x0

    .line 785
    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 786
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 787
    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    move-object v11, v0

    .line 790
    :goto_2c
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 791
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 794
    :cond_49
    if-eqz v11, :cond_ae

    .line 795
    const/4 v0, 0x0

    array-length v12, v11

    move v10, v0

    :goto_4e
    if-ge v10, v12, :cond_ae

    aget-object v6, v11, v10

    .line 796
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 797
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 798
    if-eqz v0, :cond_76

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 799
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 801
    :cond_76
    iget v0, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9b

    .line 802
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v6, v1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 803
    iget-object v3, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    iget v6, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 802
    invoke-direct/range {v0 .. v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {p0, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v0, v8

    .line 795
    :goto_96
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v4, v0

    goto :goto_4e

    .line 805
    :cond_9b
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_ab

    goto :goto_96

    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0

    .line 810
    :cond_ae
    if-nez p1, :cond_bc

    .line 811
    :try_start_b0
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-direct {v0, v1, p2, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_ab

    :goto_ba
    monitor-exit p0

    .line 815
    return-wide v4

    .line 813
    :cond_bc
    :try_start_bc
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object v1, p1

    move-object v3, p2

    move/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {p0, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_cc
    .catchall {:try_start_bc .. :try_end_cc} :catchall_ab

    goto :goto_ba

    :cond_cd
    move-object v11, v0

    goto/16 :goto_2c
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5

    .prologue
    monitor-enter p0

    .line 758
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 764
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_44

    .line 765
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 766
    if-nez v0, :cond_38

    .line 767
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    .line 768
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_38
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 771
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    :cond_44
    monitor-exit p0

    .line 773
    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 718
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_4b

    .line 719
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_36

    .line 720
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 723
    :cond_36
    :try_start_36
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 724
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_4b} :catch_73
    .catchall {:try_start_36 .. :try_end_4b} :catchall_33

    .line 730
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_e3

    .line 731
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 732
    if-nez v1, :cond_90

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :catch_73
    move-exception v0

    .line 726
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_90
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 735
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 738
    const/4 v0, 0x0

    array-length v2, v1

    :goto_a1
    if-ge v0, v2, :cond_e3

    aget-object v3, v1, v0

    .line 739
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 740
    const-string/jumbo v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 738
    :cond_cf
    :goto_cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 745
    :cond_d2
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 747
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 750
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_e2
    .catchall {:try_start_4b .. :try_end_e2} :catchall_33

    goto :goto_cf

    :cond_e3
    monitor-exit p0

    .line 754
    return-void
.end method

.method private declared-synchronized trimToFit()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 825
    :try_start_2
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 826
    const-string/jumbo v1, "dropbox_age_seconds"

    const v3, 0x3f480

    .line 825
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 827
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 828
    const-string/jumbo v4, "dropbox_max_files"

    .line 829
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 830
    const/16 v0, 0x12c

    .line 827
    :goto_1b
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v0, v1, 0x3e8

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 832
    :goto_29
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 833
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 834
    iget-wide v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_10a

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    iget v3, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v1, v3, :cond_10a

    .line 849
    :cond_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 850
    iget-wide v4, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_ae

    .line 851
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 852
    const-string/jumbo v4, "dropbox_quota_percent"

    const/16 v5, 0xa

    .line 851
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 853
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 854
    const-string/jumbo v5, "dropbox_reserve_percent"

    const/16 v6, 0xa

    .line 853
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 855
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 856
    const-string/jumbo v6, "dropbox_quota_kb"

    const/16 v7, 0x1400

    .line 855
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 858
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_82
    .catchall {:try_start_2 .. :try_end_82} :catchall_13f

    move-result-object v6

    .line 860
    :try_start_83
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7, v6}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_88} :catch_142
    .catchall {:try_start_83 .. :try_end_88} :catchall_13f

    .line 864
    :try_start_88
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    .line 865
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    mul-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x64

    sub-int v4, v6, v4

    .line 866
    mul-int/lit16 v5, v5, 0x400

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v5, v6

    .line 867
    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 868
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 885
    :cond_ae
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v1, :cond_fe

    .line 887
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 888
    new-instance v3, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 889
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v2, v0

    :goto_cb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 890
    if-lez v1, :cond_15f

    iget v5, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v6, v2

    div-int/2addr v6, v1

    if-gt v5, v6, :cond_15f

    .line 896
    :cond_e1
    iget v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v2

    div-int v2, v0, v1

    .line 899
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 900
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v1, v4, :cond_167

    .line 916
    :cond_fe
    iget v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_102
    .catchall {:try_start_88 .. :try_end_102} :catchall_13f

    mul-int/2addr v0, v1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 830
    :cond_106
    const/16 v0, 0x3e8

    goto/16 :goto_1b

    .line 838
    :cond_10a
    :try_start_10a
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$FileList;

    .line 839
    if-eqz v1, :cond_125

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    iget v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v6

    iput v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 840
    :cond_125
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v6

    iput v3, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 841
    :cond_138
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V
    :try_end_13d
    .catchall {:try_start_10a .. :try_end_13d} :catchall_13f

    goto/16 :goto_29

    :catchall_13f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 861
    :catch_142
    move-exception v0

    .line 862
    :try_start_143
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t restat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_15f
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v2, v0

    .line 894
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_cb

    .line 901
    :cond_167
    :goto_167
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v1, v2, :cond_ea

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_ea

    .line 902
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 903
    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18c

    iget v4, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 904
    :cond_18c
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19f

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v5, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_19f
    .catchall {:try_start_143 .. :try_end_19f} :catchall_13f

    .line 907
    :cond_19f
    :try_start_19f
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 908
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v8, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1b2} :catch_1b3
    .catchall {:try_start_19f .. :try_end_1b2} :catchall_13f

    goto :goto_167

    .line 909
    :catch_1b3
    move-exception v1

    .line 910
    :try_start_1b4
    const-string/jumbo v4, "DropBoxManagerService"

    const-string/jumbo v5, "Can\'t write tombstone file"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1bd
    .catchall {:try_start_1b4 .. :try_end_1bd} :catchall_13f

    goto :goto_167
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 25

    .prologue
    .line 229
    const/4 v6, 0x0

    .line 230
    const/4 v4, 0x0

    .line 231
    const/4 v3, 0x0

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 234
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v8

    .line 235
    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_197

    .line 310
    :catch_15
    move-exception v2

    move-object v5, v6

    .line 311
    :goto_17
    :try_start_17
    const-string/jumbo v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_1b7

    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 316
    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 318
    :cond_3f
    :goto_3f
    return-void

    .line 237
    :cond_40
    :try_start_40
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_15
    .catchall {:try_start_40 .. :try_end_48} :catchall_197

    move-result v2

    if-nez v2, :cond_55

    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 238
    return-void

    .line 239
    :cond_55
    :try_start_55
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v12

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v15, v2, [B

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_66} :catch_15
    .catchall {:try_start_55 .. :try_end_66} :catchall_197

    move-result-object v5

    .line 248
    const/4 v2, 0x0

    .line 249
    :goto_68
    :try_start_68
    array-length v4, v15

    if-ge v2, v4, :cond_73

    .line 250
    array-length v4, v15

    sub-int/2addr v4, v2

    invoke-virtual {v5, v15, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 251
    if-gtz v4, :cond_180

    .line 258
    :cond_73
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "drop"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v16, ".tmp"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_a5} :catch_1bb
    .catchall {:try_start_68 .. :try_end_a5} :catchall_1a9

    .line 259
    :try_start_a5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 260
    const/16 v6, 0x1000

    if-le v4, v6, :cond_af

    const/16 v4, 0x1000

    .line 261
    :cond_af
    const/16 v6, 0x200

    if-ge v4, v6, :cond_1dd

    const/16 v4, 0x200

    move v6, v4

    .line 262
    :goto_b6
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 263
    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_c4} :catch_18c
    .catchall {:try_start_a5 .. :try_end_c4} :catchall_1ac

    .line 264
    :try_start_c4
    array-length v3, v15

    if-ne v2, v3, :cond_183

    and-int/lit8 v3, v8, 0x4

    if-nez v3, :cond_183

    .line 265
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d0} :catch_1c0
    .catchall {:try_start_c4 .. :try_end_d0} :catchall_1ae

    .line 266
    or-int/lit8 v3, v8, 0x4

    move/from16 v22, v3

    move-object v3, v6

    move/from16 v6, v22

    .line 270
    :goto_d7
    const/4 v4, 0x0

    :try_start_d8
    invoke-virtual {v3, v15, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 273
    sub-long v18, v8, v10

    const-wide/16 v20, 0x7530

    cmp-long v2, v18, v20

    if-lez v2, :cond_1d9

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v10

    .line 278
    :goto_eb
    invoke-virtual {v5, v15}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 279
    if-gtz v2, :cond_187

    .line 280
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 281
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 282
    const/4 v3, 0x0

    .line 287
    :goto_f8
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 288
    cmp-long v4, v12, v10

    if-lez v4, :cond_191

    .line 289
    const-string/jumbo v2, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dropping: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " bytes)"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_13e} :catch_18c
    .catchall {:try_start_d8 .. :try_end_13e} :catchall_1ac

    .line 291
    const/4 v4, 0x0

    .line 296
    :goto_13f
    :try_start_13f
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v6}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_144} :catch_1c6
    .catchall {:try_start_13f .. :try_end_144} :catchall_1b1

    move-result-wide v6

    .line 297
    const/4 v4, 0x0

    .line 299
    :try_start_146
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v8, "tag"

    invoke-virtual {v2, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    if-nez v6, :cond_165

    .line 303
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    :cond_165
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_175} :catch_1ce
    .catchall {:try_start_146 .. :try_end_175} :catchall_1b4

    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_3f

    .line 252
    :cond_180
    add-int/2addr v2, v4

    goto/16 :goto_68

    :cond_183
    move v6, v8

    move-object v3, v4

    .line 264
    goto/16 :goto_d7

    .line 284
    :cond_187
    :try_start_187
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18a} :catch_18c
    .catchall {:try_start_187 .. :try_end_18a} :catchall_1ac

    goto/16 :goto_f8

    .line 310
    :catch_18c
    move-exception v2

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_17

    .line 294
    :cond_191
    if-lez v2, :cond_1d6

    move-wide v12, v10

    move-wide v10, v8

    goto/16 :goto_d7

    .line 312
    :catchall_197
    move-exception v2

    move-object v5, v4

    move-object v7, v6

    .line 313
    :goto_19a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 316
    if-eqz v7, :cond_1a8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 312
    :cond_1a8
    throw v2

    :catchall_1a9
    move-exception v2

    move-object v7, v6

    goto :goto_19a

    :catchall_1ac
    move-exception v2

    goto :goto_19a

    :catchall_1ae
    move-exception v2

    move-object v3, v4

    goto :goto_19a

    :catchall_1b1
    move-exception v2

    move-object v7, v4

    goto :goto_19a

    :catchall_1b4
    move-exception v2

    move-object v7, v4

    goto :goto_19a

    :catchall_1b7
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto :goto_19a

    .line 310
    :catch_1bb
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_17

    :catch_1c0
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_17

    :catch_1c6
    move-exception v2

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    goto/16 :goto_17

    :catch_1ce
    move-exception v2

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    goto/16 :goto_17

    :cond_1d6
    move-object v4, v7

    goto/16 :goto_13f

    :cond_1d9
    move-wide v8, v10

    move-wide v10, v12

    goto/16 :goto_eb

    :cond_1dd
    move v6, v4

    goto/16 :goto_b6
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23

    .prologue
    monitor-enter p0

    .line 365
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_150

    move-result v2

    if-nez v2, :cond_12

    monitor-exit p0

    return-void

    .line 368
    :cond_12
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_48
    .catchall {:try_start_12 .. :try_end_15} :catchall_150

    .line 377
    :try_start_15
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 379
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 380
    const/4 v2, 0x0

    move v4, v2

    :goto_23
    if-eqz p3, :cond_f9

    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v4, v2, :cond_f9

    .line 381
    aget-object v2, p3, v4

    const-string/jumbo v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    aget-object v2, p3, v4

    const-string/jumbo v3, "--print"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 382
    :cond_40
    const/4 v2, 0x1

    move v3, v2

    move v2, v8

    .line 380
    :goto_43
    add-int/lit8 v4, v4, 0x1

    move v8, v2

    move v9, v3

    goto :goto_23

    .line 369
    :catch_48
    move-exception v2

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v3, "DropBoxManagerService"

    const-string/jumbo v4, "Can\'t init"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_15 .. :try_end_6b} :catchall_150

    monitor-exit p0

    .line 372
    return-void

    .line 383
    :cond_6d
    :try_start_6d
    aget-object v2, p3, v4

    const-string/jumbo v3, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    aget-object v2, p3, v4

    const-string/jumbo v3, "--file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 384
    :cond_83
    const/4 v2, 0x1

    move v3, v9

    goto :goto_43

    .line 385
    :cond_86
    aget-object v2, p3, v4

    const-string/jumbo v3, "-h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    aget-object v2, p3, v4

    const-string/jumbo v3, "--help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 386
    :cond_9c
    const-string/jumbo v2, "Dropbox (dropbox) dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string/jumbo v2, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v2, "    -h|--help: print this help"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v2, "    -p|--print: print full contents of each entry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v2, "    -f|--file: print path of each entry\'s file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v2, "  [timestamp] optionally filters to only those entries."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_6d .. :try_end_cc} :catchall_150

    monitor-exit p0

    .line 392
    return-void

    .line 393
    :cond_ce
    :try_start_ce
    aget-object v2, p3, v4

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 394
    const-string/jumbo v2, "Unknown argument: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v8

    move v3, v9

    goto/16 :goto_43

    .line 396
    :cond_f0
    aget-object v2, p3, v4

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    move v3, v9

    goto/16 :goto_43

    .line 400
    :cond_f9
    const-string/jumbo v2, "Drop box contents: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v2, "Max entries: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_159

    .line 404
    const-string/jumbo v2, "Searching for:"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_139
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, " "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14f
    .catchall {:try_start_ce .. :try_end_14f} :catchall_150

    goto :goto_139

    :catchall_150
    move-exception v2

    monitor-exit p0

    throw v2

    .line 406
    :cond_153
    :try_start_153
    const-string/jumbo v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_159
    const/4 v3, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 410
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 411
    const-string/jumbo v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_173
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v7, v0

    .line 413
    iget-wide v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 414
    const-string/jumbo v2, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 415
    const/4 v4, 0x1

    .line 416
    const/4 v2, 0x0

    move/from16 v18, v2

    move v2, v4

    move/from16 v4, v18

    :goto_198
    if-ge v4, v15, :cond_1b3

    if-eqz v2, :cond_1b3

    .line 417
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b1

    iget-object v6, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 416
    :goto_1ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_198

    .line 418
    :cond_1b1
    const/4 v2, 0x1

    goto :goto_1ae

    .line 420
    :cond_1b3
    if-nez v2, :cond_1b8

    move v2, v3

    :goto_1b6
    move v3, v2

    goto :goto_173

    .line 422
    :cond_1b8
    add-int/lit8 v12, v3, 0x1

    .line 423
    if-eqz v9, :cond_1c2

    const-string/jumbo v2, "========================================\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_1c2
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v2, :cond_1e9

    const-string/jumbo v2, "(no tag)"

    :goto_1d4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 427
    if-nez v6, :cond_1ec

    .line 428
    const-string/jumbo v2, " (no file)\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v12

    .line 429
    goto :goto_1b6

    .line 424
    :cond_1e9
    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_1d4

    .line 430
    :cond_1ec
    iget v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1fa

    .line 431
    const-string/jumbo v2, " (contents lost)\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v12

    .line 432
    goto :goto_1b6

    .line 434
    :cond_1fa
    const-string/jumbo v2, " ("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_20c

    const-string/jumbo v2, "compressed "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_20c
    iget v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_299

    const-string/jumbo v2, "text"

    :goto_215
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string/jumbo v2, ", "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    if-nez v8, :cond_237

    if-eqz v9, :cond_24d

    iget v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_24d

    .line 441
    :cond_237
    if-nez v9, :cond_23f

    const-string/jumbo v2, "    "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_23f
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_24d
    iget v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_24f
    .catchall {:try_start_153 .. :try_end_24f} :catchall_150

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_28e

    if-nez v9, :cond_259

    xor-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_28e

    .line 446
    :cond_259
    const/4 v11, 0x0

    .line 447
    const/4 v10, 0x0

    .line 449
    :try_start_25b
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    .line 450
    iget-object v3, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v7, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 449
    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_266} :catch_391
    .catchall {:try_start_25b .. :try_end_266} :catchall_34e

    .line 452
    if-eqz v9, :cond_306

    .line 453
    :try_start_268
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_271} :catch_344
    .catchall {:try_start_268 .. :try_end_271} :catchall_385

    .line 454
    const/16 v3, 0x1000

    :try_start_273
    new-array v5, v3, [C

    .line 455
    const/4 v3, 0x0

    .line 457
    :cond_276
    :goto_276
    invoke-virtual {v4, v5}, Ljava/io/Reader;->read([C)I

    move-result v7

    .line 458
    if-gtz v7, :cond_29e

    .line 468
    if-nez v3, :cond_284

    const-string/jumbo v3, "\n"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_284} :catch_2c1
    .catchall {:try_start_273 .. :try_end_284} :catchall_389

    .line 485
    :cond_284
    :goto_284
    if-eqz v2, :cond_289

    :try_start_286
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_289
    .catchall {:try_start_286 .. :try_end_289} :catchall_150

    .line 486
    :cond_289
    if-eqz v4, :cond_28e

    .line 488
    :try_start_28b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_28e
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_28e} :catch_34b
    .catchall {:try_start_28b .. :try_end_28e} :catchall_150

    .line 495
    :cond_28e
    :goto_28e
    if-eqz v9, :cond_396

    :try_start_290
    const-string/jumbo v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v12

    goto/16 :goto_1b6

    .line 436
    :cond_299
    const-string/jumbo v2, "data"
    :try_end_29c
    .catchall {:try_start_290 .. :try_end_29c} :catchall_150

    goto/16 :goto_215

    .line 459
    :cond_29e
    const/4 v3, 0x0

    :try_start_29f
    invoke-virtual {v13, v5, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 460
    add-int/lit8 v3, v7, -0x1

    aget-char v3, v5, v3

    const/16 v7, 0xa

    if-ne v3, v7, :cond_304

    const/4 v3, 0x1

    .line 463
    :goto_2ab
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/high16 v10, 0x10000

    if-le v7, v10, :cond_276

    .line 464
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 465
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2c0
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2c0} :catch_2c1
    .catchall {:try_start_29f .. :try_end_2c0} :catchall_389

    goto :goto_276

    .line 481
    :catch_2c1
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v4

    move-object v4, v2

    move-object/from16 v2, v18

    .line 482
    :goto_2c8
    :try_start_2c8
    const-string/jumbo v5, "*** "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string/jumbo v5, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t read: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f7
    .catchall {:try_start_2c8 .. :try_end_2f7} :catchall_38e

    .line 485
    if-eqz v4, :cond_2fc

    :try_start_2f9
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2fc
    .catchall {:try_start_2f9 .. :try_end_2fc} :catchall_150

    .line 486
    :cond_2fc
    if-eqz v3, :cond_28e

    .line 488
    :try_start_2fe
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_301} :catch_302
    .catchall {:try_start_2fe .. :try_end_301} :catchall_150

    goto :goto_28e

    .line 489
    :catch_302
    move-exception v2

    goto :goto_28e

    .line 460
    :cond_304
    const/4 v3, 0x0

    goto :goto_2ab

    .line 470
    :cond_306
    const/16 v3, 0x46

    :try_start_308
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    const-string/jumbo v3, "    "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    if-nez v4, :cond_323

    .line 473
    const-string/jumbo v3, "[null]"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_31a
    :goto_31a
    const-string/jumbo v3, "\n"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v10

    goto/16 :goto_284

    .line 475
    :cond_323
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x46

    if-ne v3, v5, :cond_349

    const/4 v3, 0x1

    .line 476
    :goto_32c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0x2f

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    if-eqz v3, :cond_31a

    const-string/jumbo v3, " ..."

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_343
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_343} :catch_344
    .catchall {:try_start_308 .. :try_end_343} :catchall_385

    goto :goto_31a

    .line 481
    :catch_344
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_2c8

    .line 475
    :cond_349
    const/4 v3, 0x0

    goto :goto_32c

    .line 489
    :catch_34b
    move-exception v2

    goto/16 :goto_28e

    .line 484
    :catchall_34e
    move-exception v2

    move-object v4, v11

    .line 485
    :goto_350
    if-eqz v4, :cond_355

    :try_start_352
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_355
    .catchall {:try_start_352 .. :try_end_355} :catchall_150

    .line 486
    :cond_355
    if-eqz v10, :cond_35a

    .line 488
    :try_start_357
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_35a
    .catch Ljava/io/IOException; {:try_start_357 .. :try_end_35a} :catch_35b
    .catchall {:try_start_357 .. :try_end_35a} :catchall_150

    .line 484
    :cond_35a
    :goto_35a
    :try_start_35a
    throw v2

    .line 489
    :catch_35b
    move-exception v3

    goto :goto_35a

    .line 498
    :cond_35d
    if-nez v3, :cond_365

    const-string/jumbo v2, "(No entries found.)\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_365
    if-eqz p3, :cond_36c

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_37a

    .line 501
    :cond_36c
    if-nez v9, :cond_374

    const-string/jumbo v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_374
    const-string/jumbo v2, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_37a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_383
    .catchall {:try_start_35a .. :try_end_383} :catchall_150

    monitor-exit p0

    .line 507
    return-void

    .line 484
    :catchall_385
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto :goto_350

    :catchall_389
    move-exception v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_350

    :catchall_38e
    move-exception v2

    move-object v10, v3

    goto :goto_350

    .line 481
    :catch_391
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_2c8

    :cond_396
    move v2, v12

    goto/16 :goto_1b6
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 14

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 331
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.READ_LOGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1b

    .line 333
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "READ_LOGS permission required"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2

    .line 337
    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 343
    if-nez p1, :cond_32

    :try_start_20
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_18

    .line 344
    :goto_22
    if-nez v2, :cond_3b

    monitor-exit p0

    return-object v9

    .line 338
    :catch_26
    move-exception v2

    .line 339
    :try_start_27
    const-string/jumbo v3, "DropBoxManagerService"

    const-string/jumbo v4, "Can\'t init"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_18

    monitor-exit p0

    .line 340
    return-object v9

    .line 343
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_22

    .line 346
    :cond_3b
    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4d
    :goto_4d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v7, v0

    .line 347
    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 348
    iget v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_70

    .line 349
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    iget-object v3, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v2, v3, v4, v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_6e
    .catchall {:try_start_32 .. :try_end_6e} :catchall_18

    monitor-exit p0

    return-object v2

    .line 351
    :cond_70
    :try_start_70
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_18

    move-result-object v6

    .line 353
    :try_start_76
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    .line 354
    iget-object v3, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v7, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 353
    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_83
    .catchall {:try_start_76 .. :try_end_81} :catchall_18

    monitor-exit p0

    return-object v2

    .line 355
    :catch_83
    move-exception v2

    .line 356
    :try_start_84
    const-string/jumbo v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_18

    goto :goto_4d

    :cond_9f
    monitor-exit p0

    .line 361
    return-object v9
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 323
    :try_start_4
    const-string/jumbo v0, "disabled"

    .line 324
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2b

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 326
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    return v0

    .line 325
    :catchall_2b
    move-exception v0

    .line 326
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    throw v0
.end method

.method public onBootPhase(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 201
    sparse-switch p1, :sswitch_data_2e

    .line 221
    :goto_4
    return-void

    .line 203
    :sswitch_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 208
    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 209
    new-instance v2, Lcom/android/server/DropBoxManagerService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    .line 207
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_4

    .line 218
    :sswitch_2b
    iput-boolean v4, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_4

    .line 201
    :sswitch_data_2e
    .sparse-switch
        0x1f4 -> :sswitch_5
        0x3e8 -> :sswitch_2b
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 193
    const-string/jumbo v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 197
    return-void
.end method
