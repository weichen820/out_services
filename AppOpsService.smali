.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final DEBUG_TEST:Z = false

.field private static final MAX_RECORD_EVENT_QUANTITY:J = 0x32L

.field private static final MAX_RECORD_VERSION_QUANTITY:J = 0x5L

.field private static final RECORD_EVENT_INTERVAL:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    .line 96
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x3e8

    :goto_9
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/AppOpsService;->WRITE_DELAY:J

    .line 90
    return-void

    .line 96
    :cond_d
    const v0, 0x249f00

    goto :goto_9
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 108
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 192
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 257
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 258
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 259
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 260
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 262
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 734
    if-nez p4, :cond_4

    .line 735
    return-object p0

    .line 737
    :cond_4
    if-nez p0, :cond_b

    .line 738
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 741
    :cond_b
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v5, v4

    move v2, v4

    .line 742
    :goto_11
    if-ge v5, v6, :cond_58

    .line 743
    invoke-virtual {p4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 744
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 745
    if-nez v1, :cond_39

    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 758
    :goto_2a
    if-nez v0, :cond_34

    .line 759
    new-instance v2, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_34
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v2, v0

    goto :goto_11

    .line 749
    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v4

    .line 750
    :goto_3e
    if-ge v3, v7, :cond_59

    .line 751
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ChangeRec;

    .line 752
    iget v8, v0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v8, p1, :cond_54

    iget-object v0, v0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 753
    const/4 v0, 0x1

    .line 754
    goto :goto_2a

    .line 750
    :cond_54
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3e

    .line 762
    :cond_58
    return-object p0

    :cond_59
    move v0, v2

    goto :goto_2a
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .registers 13

    .prologue
    .line 2790
    new-instance v6, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .line 2791
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2792
    return-object v6
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 7

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1023
    if-eqz v0, :cond_1f

    .line 1024
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 1025
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 1026
    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v0

    .line 1029
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2739
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_22

    .line 2740
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must by called by the system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2742
    :cond_22
    return-void
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    const/4 v3, 0x0

    .line 440
    if-nez p2, :cond_34

    .line 441
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 442
    const/4 v2, 0x0

    move v15, v2

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_76

    .line 443
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 444
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 443
    invoke-direct/range {v2 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;IIJIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_a

    .line 447
    :cond_34
    const/4 v2, 0x0

    move v15, v2

    move-object v2, v3

    :goto_37
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v15, v3, :cond_78

    .line 448
    aget v3, p2, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 449
    if-ltz v4, :cond_7c

    .line 450
    if-nez v2, :cond_79

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v2

    .line 453
    :goto_4f
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 454
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 453
    invoke-direct/range {v2 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;IIJIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    .line 447
    :goto_71
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    move-object v2, v3

    goto :goto_37

    :cond_76
    move-object/from16 v2, v16

    .line 458
    :cond_78
    return-object v2

    :cond_79
    move-object/from16 v16, v2

    goto :goto_4f

    :cond_7c
    move-object v3, v2

    goto :goto_71
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const/4 v3, 0x0

    .line 414
    if-nez p2, :cond_3d

    .line 415
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 416
    const/4 v2, 0x0

    move v15, v2

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v15, v2, :cond_80

    .line 417
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 418
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v3, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v4, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v5, v14, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v6, v14, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    iget-object v7, v14, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    .line 419
    iget v8, v14, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    iget v9, v14, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    iget-wide v10, v14, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v12, v14, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v13, v14, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 420
    iget-object v14, v14, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 418
    invoke-direct/range {v2 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;IIJIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_a

    .line 423
    :cond_3d
    const/4 v2, 0x0

    move v15, v2

    :goto_3f
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v15, v2, :cond_82

    .line 424
    aget v2, p2, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 425
    if-eqz v14, :cond_7c

    .line 426
    if-nez v3, :cond_83

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v3

    .line 429
    :goto_5a
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v3, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v4, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v5, v14, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v6, v14, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    iget-object v7, v14, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    .line 430
    iget v8, v14, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    iget v9, v14, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    iget-wide v10, v14, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v12, v14, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v13, v14, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 431
    iget-object v14, v14, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 429
    invoke-direct/range {v2 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;IIJIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    .line 423
    :cond_7c
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_3f

    :cond_80
    move-object/from16 v3, v16

    .line 435
    :cond_82
    return-object v3

    :cond_83
    move-object/from16 v16, v3

    goto :goto_5a
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .prologue
    .line 2142
    const-string/jumbo v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    const-string/jumbo v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2146
    const-string/jumbo v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    const-string/jumbo v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    const-string/jumbo v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    const-string/jumbo v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    const-string/jumbo v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    const-string/jumbo v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    const-string/jumbo v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    const-string/jumbo v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2155
    const-string/jumbo v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    const-string/jumbo v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    const-string/jumbo v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    const-string/jumbo v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    const-string/jumbo v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    const-string/jumbo v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    const-string/jumbo v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    .prologue
    .line 2367
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    const-string/jumbo v0, "  none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1510
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1511
    if-nez v0, :cond_8

    .line 1512
    return-object v1

    .line 1514
    :cond_8
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    return-object v0
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x4

    const/4 v2, 0x1

    .line 1518
    const/4 v3, 0x2

    if-eq p2, v3, :cond_a

    if-nez p2, :cond_16

    :cond_a
    move p2, v2

    .line 1526
    :cond_b
    :goto_b
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 1527
    if-nez v0, :cond_3c

    .line 1528
    if-nez p3, :cond_2e

    .line 1529
    return-object v4

    .line 1518
    :cond_16
    if-eq p2, v2, :cond_a

    .line 1520
    if-eq p2, v1, :cond_1e

    const/16 v2, 0x10

    if-ne p2, v2, :cond_20

    :cond_1e
    move p2, v1

    goto :goto_b

    .line 1522
    :cond_20
    if-eq p2, v0, :cond_25

    const/4 v1, 0x6

    if-ne p2, v1, :cond_27

    :cond_25
    :goto_25
    move p2, v0

    .line 1524
    goto :goto_b

    .line 1523
    :cond_27
    const/4 v1, 0x5

    if-eq p2, v1, :cond_25

    const/4 v1, 0x7

    if-ne p2, v1, :cond_b

    goto :goto_25

    .line 1531
    :cond_2e
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    iget-object v1, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1532
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1534
    :cond_3c
    if-eqz p3, :cond_41

    .line 1535
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1537
    :cond_41
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 1422
    invoke-direct {p0, p2, p1}, Lcom/android/server/AppOpsService;->isFilterPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1423
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFilterPackageName: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_26
    return-object v8

    .line 1426
    :cond_27
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v3

    .line 1427
    if-nez v3, :cond_2e

    .line 1428
    return-object v8

    .line 1431
    :cond_2e
    iget-object v0, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_3c

    .line 1432
    if-nez p3, :cond_35

    .line 1433
    return-object v8

    .line 1435
    :cond_35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1438
    :cond_3c
    iget-object v0, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    .line 1439
    if-nez v0, :cond_ea

    .line 1440
    if-nez p3, :cond_49

    .line 1441
    return-object v8

    .line 1446
    :cond_49
    if-eqz p1, :cond_e0

    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1449
    const/4 v0, -0x1

    .line 1451
    :try_start_50
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1454
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1453
    const/high16 v7, 0x10000000

    .line 1451
    invoke-interface {v2, p2, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1455
    if-eqz v2, :cond_aa

    .line 1456
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1457
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_64} :catch_ce
    .catchall {:try_start_50 .. :try_end_64} :catchall_eb

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_69

    const/4 v1, 0x1

    .line 1474
    :cond_69
    :goto_69
    if-eq v0, p1, :cond_dd

    .line 1477
    :try_start_6b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1479
    const-string/jumbo v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad call: specified package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1480
    const-string/jumbo v6, " under uid "

    .line 1479
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1480
    const-string/jumbo v6, " but it is really "

    .line 1479
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_6b .. :try_end_a6} :catchall_eb

    .line 1484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1481
    return-object v8

    .line 1460
    :cond_aa
    :try_start_aa
    const-string/jumbo v2, "media"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 1461
    const/16 v0, 0x3f5

    .line 1462
    goto :goto_69

    .line 1463
    :cond_b6
    const-string/jumbo v2, "audioserver"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 1464
    const/16 v0, 0x411

    .line 1465
    goto :goto_69

    .line 1466
    :cond_c2
    const-string/jumbo v2, "cameraserver"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_c8} :catch_ce
    .catchall {:try_start_aa .. :try_end_c8} :catchall_eb

    move-result v2

    if-eqz v2, :cond_69

    .line 1467
    const/16 v0, 0x417

    .line 1468
    goto :goto_69

    .line 1471
    :catch_ce
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 1472
    :try_start_d2
    const-string/jumbo v6, "AppOps"

    const-string/jumbo v7, "Could not contact PackageManager"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catchall {:try_start_d2 .. :try_end_db} :catchall_eb

    move v0, v2

    goto :goto_69

    .line 1484
    :cond_dd
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    :cond_e0
    new-instance v0, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v0, p2, v3, v1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1488
    iget-object v1, v3, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    :cond_ea
    return-object v0

    .line 1483
    :catchall_eb
    move-exception v0

    .line 1484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1483
    throw v0
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2869
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v0

    .line 2873
    :goto_9
    if-nez v0, :cond_e

    .line 2874
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 2876
    :cond_e
    return-object v0

    .line 2870
    :catch_f
    move-exception v1

    goto :goto_9
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1393
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1394
    if-nez v0, :cond_18

    .line 1395
    if-nez p2, :cond_e

    .line 1396
    return-object v1

    .line 1398
    :cond_e
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1399
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1401
    :cond_18
    return-object v0
.end method

.method private isFilterPackageName(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 1405
    if-eqz p1, :cond_70

    const-string/jumbo v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1406
    const-string/jumbo v0, "com.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1407
    const-string/jumbo v0, "com.qualcomm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1408
    const-string/jumbo v0, "com.qti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1409
    const-string/jumbo v0, "org."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1410
    const-string/jumbo v0, "com.xtc.xws"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1411
    const-string/jumbo v0, "com.xtc.datacenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1412
    const-string/jumbo v0, "com.xtc.i3launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1413
    const-string/jumbo v0, "com.xtc.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1414
    const-string/jumbo v0, "com.xtc.systemupdate_i11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1415
    const-string/jumbo v0, "com.xtc.systemagent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-nez v0, :cond_6e

    .line 1416
    const-string/jumbo v0, "audioserver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1405
    if-eqz v0, :cond_70

    .line 1417
    :cond_6e
    const/4 v0, 0x1

    return v0

    .line 1419
    :cond_70
    const/4 v0, 0x0

    return v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1541
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1542
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v1, v2

    .line 1544
    :goto_d
    if-ge v1, v4, :cond_3a

    .line 1547
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 1548
    invoke-virtual {v0, p2, p3, v3}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1549
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1551
    monitor-enter p0

    .line 1552
    const/4 v0, 0x1

    :try_start_25
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1553
    if-eqz v0, :cond_31

    iget-boolean v0, v0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_33

    if-eqz v0, :cond_31

    monitor-exit p0

    .line 1554
    return v2

    :cond_31
    monitor-exit p0

    .line 1558
    :cond_32
    return v5

    .line 1551
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1544
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 1561
    :cond_3a
    return v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 1014
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1015
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1014
    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    return v0

    .line 1016
    :catch_d
    move-exception v0

    .line 1017
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Could not talk to package manager service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isStrictOpEnable()Z
    .registers 3

    .prologue
    .line 562
    const-string/jumbo v0, "persist.vendor.strict_op_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .registers 14

    .prologue
    .line 1113
    new-instance v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .line 1114
    sget-object v0, Landroid/app/AppOpsManager;->XtcAppOpsActions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1115
    const/4 v0, 0x0

    return v0

    .line 1117
    :cond_13
    monitor-enter p0

    .line 1118
    const/4 v0, 0x1

    :try_start_15
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1119
    if-nez v0, :cond_52

    .line 1120
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteOperation: no op for code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1121
    const-string/jumbo v2, " package "

    .line 1120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_264

    .line 1122
    :cond_4f
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1124
    :cond_52
    const/4 v1, 0x1

    :try_start_53
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1125
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_264

    move-result v1

    if-eqz v1, :cond_60

    .line 1126
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1128
    :cond_60
    :try_start_60
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b3

    .line 1129
    const-string/jumbo v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Noting op not finished: uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1130
    const-string/jumbo v4, " code "

    .line 1129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1130
    const-string/jumbo v4, " time="

    .line 1129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1130
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1130
    const-string/jumbo v4, " duration="

    .line 1129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1130
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_b3
    const/4 v1, 0x0

    iput v1, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1133
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 1134
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1135
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->isStrictOpEnable()Z

    move-result v4

    if-eqz v4, :cond_e7

    const/16 v4, 0x46

    if-eq p1, v4, :cond_ca

    .line 1136
    const/16 v4, 0x47

    if-ne p1, v4, :cond_e7

    .line 1137
    :cond_ca
    if-eq v1, p1, :cond_d1

    .line 1138
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1139
    :cond_d1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_dd

    .line 1140
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_db
    .catchall {:try_start_60 .. :try_end_db} :catchall_264

    monitor-exit p0

    return v0

    .line 1142
    :cond_dd
    :try_start_dd
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_264

    move-result-object v0

    monitor-exit p0

    .line 1192
    invoke-virtual {v0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v0

    return v0

    .line 1146
    :cond_e7
    :try_start_e7
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_14f

    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_14f

    .line 1147
    iget-object v0, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1148
    if-eqz v0, :cond_1b2

    .line 1149
    sget-boolean v3, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v3, :cond_147

    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "noteOperation: reject #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    const-string/jumbo v4, " ("

    .line 1149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    const-string/jumbo v4, ") uid "

    .line 1149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    const-string/jumbo v4, " package "

    .line 1149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_14d
    .catchall {:try_start_e7 .. :try_end_14d} :catchall_264

    monitor-exit p0

    .line 1153
    return v0

    .line 1156
    :cond_14f
    if-eq v1, p1, :cond_1b0

    const/4 v3, 0x1

    :try_start_152
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 1157
    :goto_156
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v3, :cond_1b2

    .line 1158
    sget-boolean v3, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v3, :cond_1a6

    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "noteOperation: reject #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    const-string/jumbo v4, " ("

    .line 1158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    const-string/jumbo v4, ") uid "

    .line 1158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    const-string/jumbo v4, " package "

    .line 1158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_1a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1162
    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_1ae
    .catchall {:try_start_152 .. :try_end_1ae} :catchall_264

    monitor-exit p0

    return v0

    :cond_1b0
    move-object v0, v2

    .line 1156
    goto :goto_156

    .line 1165
    :cond_1b2
    :try_start_1b2
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteOperation: allowing code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1166
    const-string/jumbo v3, " package "

    .line 1165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-wide/16 v0, 0x0

    .line 1168
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    if-lez v3, :cond_23d

    .line 1169
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1173
    :cond_1f8
    :goto_1f8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1174
    sub-long v0, v4, v0

    const-wide/32 v6, 0xea60

    cmp-long v0, v0, v6

    if-lez v0, :cond_232

    .line 1175
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v6, 0x32

    cmp-long v0, v0, v6

    if-nez v0, :cond_25a

    .line 1176
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1177
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 1178
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    int-to-long v0, v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-nez v0, :cond_22f

    .line 1179
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 1184
    :cond_22f
    :goto_22f
    invoke-direct {p0, v2, p3, p2}, Lcom/android/server/AppOpsService;->recordPackageVersion(Lcom/android/server/AppOpsService$Op;Ljava/lang/String;I)V

    .line 1186
    :cond_232
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1187
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1188
    iput-object p5, v2, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;
    :try_end_23a
    .catchall {:try_start_1b2 .. :try_end_23a} :catchall_264

    .line 1189
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1170
    :cond_23d
    :try_start_23d
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f8

    .line 1171
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1f8

    .line 1182
    :cond_25a
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_263
    .catchall {:try_start_23d .. :try_end_263} :catchall_264

    goto :goto_22f

    .line 1117
    :catchall_264
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyWatchersOfChange(I)V
    .registers 10

    .prologue
    .line 2666
    monitor-enter p0

    .line 2667
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_30

    .line 2668
    if-nez v0, :cond_d

    monitor-exit p0

    .line 2669
    return-void

    .line 2671
    :cond_d
    :try_start_d
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_30

    monitor-exit p0

    .line 2677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2679
    :try_start_17
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 2680
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_43

    .line 2681
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_3e

    .line 2683
    :try_start_25
    iget-object v0, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface {v0, p1, v6, v7}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_33
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3e

    .line 2680
    :goto_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 2666
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2684
    :catch_33
    move-exception v0

    .line 2685
    :try_start_34
    const-string/jumbo v6, "AppOps"

    const-string/jumbo v7, "Error dispatching op op change"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_2c

    .line 2688
    :catchall_3e
    move-exception v0

    .line 2689
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2688
    throw v0

    .line 2689
    :cond_43
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2691
    return-void
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 16

    .prologue
    .line 2166
    if-nez p1, :cond_7

    .line 2167
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2169
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 2170
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 2172
    :try_start_f
    const-string/jumbo v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2174
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 2175
    if-gez v0, :cond_d4

    .line 2176
    return v0

    .line 2172
    :cond_20
    const-string/jumbo v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2198
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 2199
    if-gez v0, :cond_11f

    .line 2200
    return v0

    .line 2172
    :cond_31
    const-string/jumbo v0, "query-op"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2265
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 2266
    if-gez v0, :cond_24f

    .line 2267
    return v0

    .line 2172
    :cond_42
    const-string/jumbo v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2293
    const/4 v1, 0x0

    .line 2294
    const/4 v0, -0x2

    .line 2295
    :goto_4d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d6

    .line 2296
    const-string/jumbo v4, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b8

    .line 2297
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2298
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_4d

    .line 2172
    :cond_65
    const-string/jumbo v0, "write-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2329
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 2330
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2331
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2329
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_84} :catch_105

    move-result-wide v2

    .line 2334
    :try_start_85
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    monitor-enter v1
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_318

    .line 2335
    :try_start_88
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v4, v4, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_315

    :try_start_93
    monitor-exit v1

    .line 2337
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 2338
    const-string/jumbo v0, "Current settings written."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_93 .. :try_end_9f} :catchall_318

    .line 2340
    :try_start_9f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    const/4 v0, 0x0

    return v0

    .line 2172
    :cond_a4
    const-string/jumbo v0, "read-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_322

    .line 2345
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 2346
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2345
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_c3} :catch_105

    move-result-wide v2

    .line 2350
    :try_start_c4
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->readState()V

    .line 2351
    const-string/jumbo v0, "Last settings read."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_c4 .. :try_end_cf} :catchall_31d

    .line 2353
    :try_start_cf
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2355
    const/4 v0, 0x0

    return v0

    .line 2178
    :cond_d4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2179
    if-nez v0, :cond_e2

    .line 2180
    const-string/jumbo v0, "Error: Mode not specified."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    const/4 v0, -0x1

    return v0

    .line 2184
    :cond_e2
    invoke-virtual {p0, v0, v3}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    .line 2185
    if-gez v0, :cond_ea

    .line 2186
    const/4 v0, -0x1

    return v0

    .line 2189
    :cond_ea
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_fb

    .line 2190
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v4, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2195
    :goto_f9
    const/4 v0, 0x0

    return v0

    .line 2193
    :cond_fb
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_104} :catch_105

    goto :goto_f9

    .line 2360
    :catch_105
    move-exception v0

    .line 2361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    const/4 v0, -0x1

    return v0

    .line 2204
    :cond_11f
    :try_start_11f
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_14d

    .line 2205
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 2206
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v3, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2207
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_14b

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v4, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    const/4 v6, 0x0

    aput v4, v0, v6

    .line 2205
    :goto_136
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 2213
    :goto_13b
    if-eqz v4, :cond_143

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_166

    .line 2214
    :cond_143
    const-string/jumbo v0, "No operations."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    const/4 v0, 0x0

    return v0

    .line 2207
    :cond_14b
    const/4 v0, 0x0

    goto :goto_136

    .line 2209
    :cond_14d
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 2210
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 2211
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_164

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 2209
    :goto_15e
    invoke-interface {v1, v2, v0}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_13b

    .line 2211
    :cond_164
    const/4 v0, 0x0

    goto :goto_15e

    .line 2217
    :cond_166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2218
    const/4 v0, 0x0

    move v3, v0

    :goto_16c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_24d

    .line 2219
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    .line 2220
    const/4 v0, 0x0

    move v2, v0

    :goto_17e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_248

    .line 2221
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 2222
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    const-string/jumbo v1, ": "

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_32a

    .line 2238
    const-string/jumbo v1, "mode="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2242
    :goto_1af
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTimes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e2

    .line 2243
    const-string/jumbo v1, "; time="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTimes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTimes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2245
    sub-long v10, v6, v10

    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2246
    const-string/jumbo v1, " ago"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    :cond_1e2
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_201

    .line 2249
    const-string/jumbo v1, "; rejectTime="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v10

    sub-long v10, v6, v10

    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2251
    const-string/jumbo v1, " ago"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    :cond_201
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_233

    .line 2254
    const-string/jumbo v0, " (running)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2259
    :cond_20e
    :goto_20e
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 2220
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_17e

    .line 2226
    :pswitch_216
    const-string/jumbo v1, "allow"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1af

    .line 2229
    :pswitch_21d
    const-string/jumbo v1, "ignore"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1af

    .line 2232
    :pswitch_224
    const-string/jumbo v1, "deny"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1af

    .line 2235
    :pswitch_22b
    const-string/jumbo v1, "default"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1af

    .line 2255
    :cond_233
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v1

    if-eqz v1, :cond_20e

    .line 2256
    const-string/jumbo v1, "; duration="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_20e

    .line 2218
    :cond_248
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_16c

    .line 2262
    :cond_24d
    const/4 v0, 0x0

    return v0

    .line 2269
    :cond_24f
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 2270
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2269
    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 2271
    if-eqz v6, :cond_265

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_26d

    .line 2272
    :cond_265
    const-string/jumbo v0, "No operations."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    const/4 v0, 0x0

    return v0

    .line 2275
    :cond_26d
    const/4 v0, 0x0

    move v4, v0

    :goto_26f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2b6

    .line 2276
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 2277
    const/4 v2, 0x0

    .line 2278
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2279
    const/4 v1, 0x0

    move v3, v1

    :goto_288
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_327

    .line 2280
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 2281
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    iget v9, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-ne v8, v9, :cond_2b2

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    iget v8, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-ne v1, v8, :cond_2b2

    .line 2282
    const/4 v1, 0x1

    .line 2286
    :goto_2a5
    if-eqz v1, :cond_2ae

    .line 2287
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    :cond_2ae
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_26f

    .line 2279
    :cond_2b2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_288

    .line 2290
    :cond_2b6
    const/4 v0, 0x0

    return v0

    .line 2300
    :cond_2b8
    if-nez v1, :cond_2bd

    move-object v1, v2

    .line 2301
    goto/16 :goto_4d

    .line 2303
    :cond_2bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error: Unsupported argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    const/4 v0, -0x1

    return v0

    .line 2309
    :cond_2d6
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2dd

    .line 2310
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2313
    :cond_2dd
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 2314
    const-string/jumbo v2, "Reset all modes for: "

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2315
    const/4 v2, -0x1

    if-ne v0, v2, :cond_301

    .line 2316
    const-string/jumbo v0, "all users"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    :goto_2f1
    const-string/jumbo v0, ", "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    if-nez v1, :cond_30b

    .line 2322
    const-string/jumbo v0, "all packages"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2326
    :goto_2ff
    const/4 v0, 0x0

    return v0

    .line 2318
    :cond_301
    const-string/jumbo v2, "user "

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_2f1

    .line 2324
    :cond_30b
    const-string/jumbo v0, "package "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_314
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_314} :catch_105

    goto :goto_2ff

    .line 2334
    :catchall_315
    move-exception v0

    :try_start_316
    monitor-exit v1

    throw v0
    :try_end_318
    .catchall {:try_start_316 .. :try_end_318} :catchall_318

    .line 2339
    :catchall_318
    move-exception v0

    .line 2340
    :try_start_319
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2339
    throw v0

    .line 2352
    :catchall_31d
    move-exception v0

    .line 2353
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2352
    throw v0

    .line 2358
    :cond_322
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_325
    .catch Landroid/os/RemoteException; {:try_start_319 .. :try_end_325} :catch_105

    move-result v0

    return v0

    :cond_327
    move v1, v2

    goto/16 :goto_2a5

    .line 2224
    :pswitch_data_32a
    .packed-switch 0x0
        :pswitch_216
        :pswitch_21d
        :pswitch_224
        :pswitch_22b
    .end packed-switch
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 2796
    if-eqz p1, :cond_5f

    .line 2797
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 2798
    const/4 v1, 0x1

    if-ne p2, v1, :cond_60

    .line 2799
    sget-boolean v1, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_5f

    const-string/jumbo v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": reject #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2800
    const-string/jumbo v2, " ("

    .line 2799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2800
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 2799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2800
    const-string/jumbo v2, ") uid "

    .line 2799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2800
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 2799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2800
    const-string/jumbo v2, " package "

    .line 2799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2801
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 2799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_5f
    :goto_5f
    return-void

    .line 2802
    :cond_60
    if-nez p2, :cond_5f

    .line 2803
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": allowing code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2804
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 2803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2805
    const-string/jumbo v2, " package "

    .line 2803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2805
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 2803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 540
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_41

    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_41

    .line 541
    invoke-direct {p0, p2, p3, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_41

    .line 543
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 544
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_41

    .line 545
    iget-object v1, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 546
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 547
    if-eqz v2, :cond_41

    .line 548
    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 550
    iput-object v5, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 552
    :cond_36
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 553
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 559
    :cond_41
    return-void
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .registers 13

    .prologue
    .line 2812
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_3f

    .line 2813
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordOperationLocked: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_3f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 2816
    if-eqz v2, :cond_55

    .line 2817
    const-string/jumbo v0, "noteOperartion"

    invoke-direct {p0, v2, p4, v0}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2818
    const/4 v0, 0x1

    if-ne p4, v0, :cond_56

    .line 2819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2844
    :cond_55
    :goto_55
    return-void

    .line 2820
    :cond_56
    if-nez p4, :cond_55

    .line 2821
    const-wide/16 v0, 0x0

    .line 2822
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    if-lez v3, :cond_ad

    .line 2823
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2827
    :cond_6e
    :goto_6e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2828
    sub-long v0, v4, v0

    const-wide/32 v6, 0xea60

    cmp-long v0, v0, v6

    if-lez v0, :cond_a8

    .line 2829
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v6, 0x32

    cmp-long v0, v0, v6

    if-nez v0, :cond_ca

    .line 2830
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2831
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 2832
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    int-to-long v0, v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-nez v0, :cond_a5

    .line 2833
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 2838
    :cond_a5
    :goto_a5
    invoke-direct {p0, v2, p3, p2}, Lcom/android/server/AppOpsService;->recordPackageVersion(Lcom/android/server/AppOpsService$Op;Ljava/lang/String;I)V

    .line 2841
    :cond_a8
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    goto :goto_55

    .line 2824
    :cond_ad
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6e

    .line 2825
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6e

    .line 2836
    :cond_ca
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5
.end method

.method private recordPackageVersion(Lcom/android/server/AppOpsService$Op;Ljava/lang/String;I)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x5

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1198
    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_76

    .line 1200
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, p2, v3, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1201
    if-eqz v1, :cond_1b

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1202
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_77

    .line 1212
    :cond_1b
    sget-boolean v1, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_39

    .line 1213
    const-string/jumbo v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordPackageVersion: currentVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_39
    if-eqz v0, :cond_75

    iget-object v1, p1, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_75

    .line 1216
    iget-object v1, p1, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, v6

    if-nez v1, :cond_82

    .line 1217
    iget-object v1, p1, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    iget v1, p1, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    .line 1220
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    int-to-long v0, v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_75

    .line 1221
    iput v4, p1, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    .line 1229
    :cond_75
    :goto_75
    return-void

    .line 1206
    :cond_76
    return-void

    .line 1208
    :catch_77
    move-exception v0

    .line 1209
    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Could not contact PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    return-void

    .line 1224
    :cond_82
    iget-object v1, p1, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75
.end method

.method private removeUidsForUserLocked(I)V
    .registers 4

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 2730
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2731
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 2732
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2729
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2735
    :cond_1e
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 2745
    if-nez p0, :cond_6

    .line 2746
    const-string/jumbo v0, "root"

    return-object v0

    .line 2747
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_e

    .line 2748
    const-string/jumbo v0, "com.android.shell"

    return-object v0

    .line 2749
    :cond_e
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_18

    if-nez p1, :cond_18

    .line 2750
    const-string/jumbo v0, "android"

    return-object v0

    .line 2752
    :cond_18
    return-object p1
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1501
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 1502
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1503
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 1504
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1507
    :cond_19
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_10

    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1496
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/server/AppOpsService;->WRITE_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1498
    :cond_10
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 2635
    const/4 v1, 0x0

    .line 2637
    monitor-enter p0

    .line 2638
    :try_start_2
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_36

    .line 2640
    if-nez v0, :cond_3b

    .line 2642
    :try_start_c
    new-instance v0, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_33
    .catchall {:try_start_c .. :try_end_11} :catchall_36

    .line 2646
    :try_start_11
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 2649
    :goto_17
    invoke-virtual {v2, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2650
    const/4 v0, 0x1

    .line 2653
    :goto_1e
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2654
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_36

    :cond_2c
    monitor-exit p0

    .line 2659
    if-eqz v0, :cond_32

    .line 2660
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 2662
    :cond_32
    return-void

    .line 2643
    :catch_33
    move-exception v0

    monitor-exit p0

    .line 2644
    return-void

    .line 2637
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_39
    move v0, v1

    goto :goto_1e

    :cond_3b
    move-object v2, v0

    goto :goto_17
.end method

.method private verifyIncomingOp(I)V
    .registers 5

    .prologue
    .line 1386
    if-ltz p1, :cond_7

    const/16 v0, 0x4a

    if-ge p1, v0, :cond_7

    .line 1387
    return-void

    .line 1389
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7

    .prologue
    .line 1361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1362
    return-void

    .line 1364
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 1365
    return-void

    .line 1367
    :cond_12
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1368
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1367
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1369
    return-void
.end method

.method private verifyIncomingUidByMedia(II)V
    .registers 8

    .prologue
    .line 1372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1373
    return-void

    .line 1375
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 1376
    return-void

    .line 1378
    :cond_12
    const/16 v0, 0x3b

    if-ne p2, v0, :cond_17

    .line 1379
    return-void

    .line 1381
    :cond_17
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1382
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1381
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1383
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 992
    :try_start_1
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_2e

    move-result v0

    .line 998
    :goto_5
    if-eqz v0, :cond_30

    .line 999
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio disabled for suspended package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v0, 0x1

    return v0

    .line 993
    :catch_2e
    move-exception v1

    goto :goto_5

    .line 1003
    :cond_30
    monitor-enter p0

    .line 1004
    :try_start_31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f

    move-result v0

    .line 1005
    if-eqz v0, :cond_39

    monitor-exit p0

    .line 1006
    return v0

    :cond_39
    monitor-exit p0

    .line 1009
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    return v0

    .line 1003
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 957
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 958
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 959
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 960
    if-nez v0, :cond_f

    .line 961
    return v4

    .line 963
    :cond_f
    invoke-direct {p0, p3, p2}, Lcom/android/server/AppOpsService;->isFilterPackageName(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 964
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_33

    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFilterPackageName: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_33
    return v3

    .line 967
    :cond_34
    sget-object v1, Landroid/app/AppOpsManager;->XtcAppOpsActions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 968
    return v3

    .line 970
    :cond_41
    monitor-enter p0

    .line 971
    :try_start_42
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7a

    move-result v1

    if-eqz v1, :cond_4a

    monitor-exit p0

    .line 972
    return v4

    .line 974
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 975
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 976
    if-eqz v2, :cond_69

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_69

    .line 977
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_69

    .line 978
    iget-object v0, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_7a

    move-result v0

    monitor-exit p0

    return v0

    .line 980
    :cond_69
    const/4 v2, 0x0

    :try_start_6a
    invoke-direct {p0, v1, p2, v0, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 981
    if-nez v0, :cond_76

    .line 982
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_7a

    move-result v0

    monitor-exit p0

    return v0

    .line 984
    :cond_76
    :try_start_76
    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_78
    .catchall {:try_start_76 .. :try_end_78} :catchall_7a

    monitor-exit p0

    return v0

    .line 970
    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1065
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    monitor-enter p0

    .line 1067
    const/4 v0, 0x1

    :try_start_6
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_19

    move-result-object v0

    if-eqz v0, :cond_e

    monitor-exit p0

    .line 1068
    return v1

    .line 1070
    :cond_e
    :try_start_e
    invoke-direct {p0, p2, p1}, Lcom/android/server/AppOpsService;->isFilterPackageName(Ljava/lang/String;I)Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    move-result v0

    if-eqz v0, :cond_16

    monitor-exit p0

    .line 1071
    return v1

    .line 1073
    :cond_16
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1066
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20

    .prologue
    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AppOps"

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 2375
    :cond_10
    if-eqz p3, :cond_8f

    .line 2376
    const/4 v2, 0x0

    :goto_13
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_8f

    .line 2377
    aget-object v3, p3, v2

    .line 2378
    const-string/jumbo v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2379
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2380
    return-void

    .line 2381
    :cond_2b
    const-string/jumbo v4, "-a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2376
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2383
    :cond_37
    const-string/jumbo v2, "-d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2384
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/AppOpsService;->DEBUG:Z

    .line 2385
    const-string/jumbo v2, "DEBUG is on..."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    return-void

    .line 2387
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_75

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_75

    .line 2388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2389
    return-void

    .line 2391
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2392
    return-void

    .line 2397
    :cond_8f
    monitor-enter p0

    .line 2398
    :try_start_90
    const-string/jumbo v2, "Current AppOps Service state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2400
    const/4 v3, 0x0

    .line 2401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_113

    .line 2402
    const/4 v3, 0x1

    .line 2403
    const-string/jumbo v2, "  Op mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    const/4 v2, 0x0

    move v5, v2

    :goto_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v5, v2, :cond_113

    .line 2405
    const-string/jumbo v2, "    Op "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    const-string/jumbo v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2408
    const/4 v4, 0x0

    :goto_e8
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v4, v6, :cond_10f

    .line 2409
    const-string/jumbo v6, "      #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2408
    add-int/lit8 v4, v4, 0x1

    goto :goto_e8

    .line 2404
    :cond_10f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_b2

    .line 2414
    :cond_113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_187

    .line 2415
    const/4 v3, 0x1

    .line 2416
    const-string/jumbo v2, "  Package mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    const/4 v2, 0x0

    move v5, v2

    :goto_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v5, v2, :cond_187

    .line 2418
    const-string/jumbo v2, "    Pkg "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    const-string/jumbo v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2421
    const/4 v4, 0x0

    :goto_15c
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v4, v6, :cond_183

    .line 2422
    const-string/jumbo v6, "      #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2421
    add-int/lit8 v4, v4, 0x1

    goto :goto_15c

    .line 2417
    :cond_183
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_128

    .line 2427
    :cond_187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1d2

    .line 2428
    const/4 v3, 0x1

    .line 2429
    const-string/jumbo v2, "  All mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2430
    const/4 v2, 0x0

    :goto_19b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_1d2

    .line 2431
    const-string/jumbo v4, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2432
    const-string/jumbo v4, " -> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2430
    add-int/lit8 v2, v2, 0x1

    goto :goto_19b

    .line 2435
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_28e

    .line 2436
    const/4 v4, 0x1

    .line 2437
    const-string/jumbo v2, "  Clients:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2438
    const/4 v2, 0x0

    move v6, v2

    :goto_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v6, v2, :cond_28d

    .line 2439
    const-string/jumbo v2, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientState;

    .line 2441
    const-string/jumbo v3, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2442
    iget-object v3, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_288

    iget-object v3, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_288

    .line 2443
    const-string/jumbo v3, "      Started ops:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    const/4 v3, 0x0

    move v5, v3

    :goto_23b
    iget-object v3, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_288

    .line 2445
    iget-object v3, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    .line 2446
    const-string/jumbo v7, "        "

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2447
    const-string/jumbo v7, " pkg="

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2448
    const-string/jumbo v7, " op="

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_23b

    .line 2438
    :cond_288
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_1e7

    :cond_28d
    move v3, v4

    .line 2453
    :cond_28e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_34b

    .line 2454
    const/4 v6, 0x0

    .line 2455
    const/4 v2, 0x0

    move v9, v2

    :goto_29b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_34b

    .line 2456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    .line 2457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 2458
    const/4 v4, 0x0

    move v8, v4

    move v4, v3

    move v3, v6

    :goto_2bf
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v8, v5, :cond_344

    .line 2459
    if-nez v3, :cond_644

    .line 2460
    const-string/jumbo v3, "  Audio Restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2461
    const/4 v3, 0x1

    .line 2462
    const/4 v4, 0x1

    move v6, v3

    move v7, v4

    .line 2464
    :goto_2d3
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2465
    const-string/jumbo v4, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    const-string/jumbo v4, " usage="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2467
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Restriction;

    .line 2468
    const-string/jumbo v4, ": mode="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2469
    iget-object v4, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33d

    .line 2470
    const-string/jumbo v4, "      Exceptions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    const/4 v4, 0x0

    move v5, v4

    :goto_31c
    iget-object v4, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v5, v4, :cond_33d

    .line 2472
    const-string/jumbo v4, "        "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_31c

    .line 2458
    :cond_33d
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v4, v7

    move v3, v6

    goto/16 :goto_2bf

    .line 2455
    :cond_344
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v6, v3

    move v3, v4

    goto/16 :goto_29b

    .line 2478
    :cond_34b
    if-eqz v3, :cond_350

    .line 2479
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2481
    :cond_350
    const/4 v2, 0x0

    move v6, v2

    move v2, v3

    :goto_353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v6, v3, :cond_521

    .line 2482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 2484
    const-string/jumbo v3, "  Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2485
    const/4 v7, 0x1

    .line 2487
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2488
    if-eqz v4, :cond_3b3

    .line 2489
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 2490
    const/4 v3, 0x0

    :goto_388
    if-ge v3, v5, :cond_3b3

    .line 2491
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2492
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 2493
    const-string/jumbo v12, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    const-string/jumbo v8, ": mode="

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 2490
    add-int/lit8 v3, v3, 0x1

    goto :goto_388

    .line 2498
    :cond_3b3
    iget-object v2, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2499
    if-nez v2, :cond_3bc

    .line 2481
    :cond_3b7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v7

    goto :goto_353

    .line 2503
    :cond_3bc
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3c4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 2504
    const-string/jumbo v3, "    Package "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2505
    const/4 v3, 0x0

    move v5, v3

    :goto_3e9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_3c4

    .line 2506
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    .line 2507
    const-string/jumbo v4, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2508
    const-string/jumbo v4, ": mode="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2509
    const-string/jumbo v4, "; time="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    iget-object v4, v3, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_45a

    .line 2511
    iget-object v4, v3, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_42d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_456
    .catchall {:try_start_90 .. :try_end_456} :catchall_457

    goto :goto_42d

    .line 2397
    :catchall_457
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2515
    :cond_45a
    :try_start_45a
    const-string/jumbo v4, "; versionNames="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    iget-object v4, v3, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_496

    .line 2517
    iget-object v4, v3, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_470
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_496

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2518
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_470

    .line 2521
    :cond_496
    const-string/jumbo v4, "; versionTimes="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2522
    iget-object v4, v3, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4d6

    .line 2523
    iget-object v4, v3, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4ac
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4ac

    .line 2527
    :cond_4d6
    iget-wide v12, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_4f7

    .line 2528
    const-string/jumbo v4, "; rejectTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    sub-long v12, v10, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2529
    const-string/jumbo v4, " ago"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2531
    :cond_4f7
    iget v4, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_50c

    .line 2532
    const-string/jumbo v3, " (running)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    :cond_504
    :goto_504
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2505
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_3e9

    .line 2533
    :cond_50c
    iget v4, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    if-eqz v4, :cond_504

    .line 2534
    const-string/jumbo v4, "; duration="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v12, v3

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_504

    .line 2540
    :cond_521
    if-eqz v2, :cond_526

    .line 2541
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2544
    :cond_526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 2545
    const/4 v2, 0x0

    move v7, v2

    :goto_530
    if-ge v7, v8, :cond_642

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  User restrictions for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_593

    .line 2551
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v6, v2

    .line 2552
    :goto_571
    if-lez v6, :cond_5e9

    .line 2553
    const-string/jumbo v2, "      Restricted ops:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    const/4 v2, 0x0

    move v5, v2

    :goto_57d
    if-ge v5, v6, :cond_5e9

    .line 2555
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 2556
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 2557
    if-nez v2, :cond_596

    .line 2554
    :goto_58f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_57d

    .line 2551
    :cond_593
    const/4 v2, 0x0

    move v6, v2

    goto :goto_571

    .line 2560
    :cond_596
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2561
    const-string/jumbo v4, "["

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    array-length v11, v2

    .line 2563
    const/4 v4, 0x0

    :goto_5a3
    if-ge v4, v11, :cond_5c0

    .line 2564
    aget-boolean v12, v2, v4

    if-eqz v12, :cond_5bd

    .line 2565
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5b6

    .line 2566
    const-string/jumbo v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    :cond_5b6
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    :cond_5bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a3

    .line 2571
    :cond_5c0
    const-string/jumbo v2, "]"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    const-string/jumbo v2, "        "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2573
    const-string/jumbo v2, " restricted ops: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_58f

    .line 2577
    :cond_5e9
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v2, :cond_63a

    .line 2578
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v5, v2

    .line 2579
    :goto_5f4
    if-lez v5, :cond_63d

    .line 2580
    const-string/jumbo v2, "      Excluded packages:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    const/4 v2, 0x0

    move v4, v2

    :goto_600
    if-ge v4, v5, :cond_63d

    .line 2582
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 2583
    iget-object v2, v3, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2584
    const-string/jumbo v9, "        "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "user: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2585
    const-string/jumbo v6, " packages: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_636
    .catchall {:try_start_45a .. :try_end_636} :catchall_457

    .line 2581
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_600

    .line 2578
    :cond_63a
    const/4 v2, 0x0

    move v5, v2

    goto :goto_5f4

    .line 2545
    :cond_63d
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_530

    :cond_642
    monitor-exit p0

    .line 2590
    return-void

    :cond_644
    move v6, v3

    move v7, v4

    goto/16 :goto_2d3
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 9

    .prologue
    .line 1310
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1311
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1312
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    if-nez v0, :cond_d

    .line 1314
    return-void

    .line 1316
    :cond_d
    instance-of v1, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v1, :cond_12

    .line 1317
    return-void

    .line 1319
    :cond_12
    check-cast p1, Lcom/android/server/AppOpsService$ClientState;

    .line 1320
    monitor-enter p0

    .line 1321
    const/4 v1, 0x1

    :try_start_16
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_60

    move-result-object v0

    .line 1322
    if-nez v0, :cond_1e

    monitor-exit p0

    .line 1323
    return-void

    .line 1325
    :cond_1e
    :try_start_1e
    iget-object v1, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v1, :cond_63

    .line 1326
    iget-object v1, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1327
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Operation not started: uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1328
    const-string/jumbo v3, " pkg="

    .line 1327
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1328
    iget-object v3, v0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1327
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1328
    const-string/jumbo v3, " op="

    .line 1327
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1328
    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1327
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_60
    .catchall {:try_start_1e .. :try_end_60} :catchall_60

    .line 1320
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1331
    :cond_63
    :try_start_63
    invoke-virtual {p0, v0}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    monitor-exit p0

    .line 1333
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1344
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_a8

    .line 1345
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_46

    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 1346
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1348
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :goto_43
    iput v6, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1358
    :goto_45
    return-void

    .line 1350
    :cond_46
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    const-string/jumbo v2, " code "

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    const-string/jumbo v2, " time="

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1351
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1352
    const-string/jumbo v2, " duration="

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1352
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1352
    const-string/jumbo v2, " nesting="

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1352
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1356
    :cond_a8
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_45
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GET_APP_OPS_STATS"

    .line 496
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 495
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 497
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    if-nez v0, :cond_1c

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 501
    :cond_1c
    monitor-enter p0

    .line 502
    const/4 v1, 0x0

    :try_start_1e
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_43

    move-result-object v0

    .line 503
    if-nez v0, :cond_26

    monitor-exit p0

    .line 504
    return-object v4

    .line 506
    :cond_26
    :try_start_26
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_43

    move-result-object v1

    .line 507
    if-nez v1, :cond_2e

    monitor-exit p0

    .line 508
    return-object v4

    .line 510
    :cond_2e
    :try_start_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    .line 512
    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 511
    invoke-direct {v3, v4, v0, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 513
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_43

    monitor-exit p0

    .line 514
    return-object v2

    .line 501
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 463
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.GET_APP_OPS_STATS"

    .line 464
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 463
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 466
    monitor-enter p0

    .line 467
    :try_start_13
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v3

    .line 468
    :goto_1a
    if-ge v4, v5, :cond_64

    .line 469
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 470
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 468
    :cond_30
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1a

    .line 473
    :cond_34
    iget-object v6, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 474
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v2, v3

    .line 475
    :goto_3b
    if-ge v2, v7, :cond_30

    .line 476
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    .line 477
    invoke-direct {p0, v0, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 478
    if-eqz v8, :cond_69

    .line 479
    if-nez v1, :cond_50

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    :cond_50
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    .line 483
    iget-object v10, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 482
    invoke-direct {v9, v10, v0, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 484
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_13 .. :try_end_5e} :catchall_66

    move-object v0, v1

    .line 475
    :goto_5f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3b

    :cond_64
    monitor-exit p0

    .line 489
    return-object v1

    .line 466
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_69
    move-object v0, v1

    goto :goto_5f
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 945
    monitor-enter p0

    .line 946
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 947
    if-nez v0, :cond_15

    .line 948
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 949
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    .line 951
    return-object v0

    .line 945
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GET_APP_OPS_STATS"

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 520
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 522
    monitor-enter p0

    .line 523
    const/4 v0, 0x0

    :try_start_13
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_37

    move-result-object v0

    .line 524
    if-nez v0, :cond_1b

    monitor-exit p0

    .line 525
    return-object v4

    .line 527
    :cond_1b
    :try_start_1b
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_37

    move-result-object v1

    .line 528
    if-nez v1, :cond_25

    monitor-exit p0

    .line 529
    return-object v4

    .line 531
    :cond_25
    :try_start_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    .line 533
    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    const/4 v4, 0x0

    .line 532
    invoke-direct {v3, v4, v0, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 534
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_37

    monitor-exit p0

    .line 535
    return-object v2

    .line 522
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 2708
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2709
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2710
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2711
    if-nez v0, :cond_e

    .line 2712
    return v5

    .line 2714
    :cond_e
    monitor-enter p0

    .line 2715
    :try_start_f
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_18
    if-ltz v3, :cond_4c

    .line 2716
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 2717
    iget-object v1, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v1, :cond_2a

    .line 2715
    :cond_26
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_18

    .line 2719
    :cond_2a
    iget-object v1, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_33
    if-ltz v2, :cond_26

    .line 2720
    iget-object v1, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 2721
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v4, p1, :cond_48

    iget v1, v1, Lcom/android/server/AppOpsService$Op;->uid:I
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_4e

    if-ne v1, p2, :cond_48

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2719
    :cond_48
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_33

    :cond_4c
    monitor-exit p0

    .line 2725
    return v5

    .line 2714
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 1102
    invoke-direct {p0, p2, p1}, Lcom/android/server/AppOpsService;->verifyIncomingUidByMedia(II)V

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1104
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1105
    if-nez v3, :cond_f

    .line 1106
    const/4 v0, 0x1

    return v0

    .line 1108
    :cond_f
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .registers 15

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1083
    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1084
    if-nez v3, :cond_10

    .line 1085
    return v6

    .line 1088
    :cond_10
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    .line 1087
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 1089
    if-nez v8, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_20

    .line 1090
    :cond_1f
    return v8

    .line 1092
    :cond_20
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1093
    if-nez v7, :cond_27

    .line 1094
    return v6

    :cond_27
    move-object v4, p0

    move v5, p1

    move v6, p3

    move-object v9, v3

    .line 1096
    invoke-direct/range {v4 .. v9}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyOperation(IILjava/lang/String;I)V
    .registers 8

    .prologue
    .line 2848
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2849
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2850
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 2851
    sget-object v1, Landroid/app/AppOpsManager;->XtcAppOpsActions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2852
    return-void

    .line 2854
    :cond_17
    monitor-enter p0

    .line 2855
    :try_start_18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 2856
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 2857
    if-eqz v0, :cond_35

    .line 2859
    iget-object v1, v0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v1}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 2860
    iget-object v1, v0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v1, p4}, Lcom/android/server/PermissionDialogReqQueue;->notifyAll(I)V

    .line 2861
    iget-object v0, v0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    .line 2865
    return-void

    .line 2854
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .prologue
    .line 2138
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2139
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 364
    monitor-enter p0

    .line 365
    :try_start_2
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_38

    .line 366
    if-nez v0, :cond_e

    monitor-exit p0

    .line 367
    return-void

    .line 373
    :cond_e
    :try_start_e
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 374
    const/4 v1, 0x1

    .line 378
    :cond_1b
    if-eqz v1, :cond_31

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 379
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_31

    .line 380
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 383
    :cond_31
    if-eqz v1, :cond_36

    .line 384
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    .line 387
    return-void

    .line 364
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1337
    if-nez p1, :cond_4

    .line 1338
    const/4 v0, -0x1

    return v0

    .line 1340
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 266
    const-string/jumbo v0, "appops"

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1663
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1666
    :cond_d
    :goto_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_54

    .line 1667
    if-ne v2, v5, :cond_1c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_54

    .line 1668
    :cond_1c
    if-eq v2, v5, :cond_d

    const/4 v3, 0x4

    if-eq v2, v3, :cond_d

    .line 1672
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1674
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1675
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_d

    .line 1677
    :cond_32
    const-string/jumbo v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1678
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1677
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    .line 1682
    :cond_54
    return-void
.end method

.method readState()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 1565
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 1566
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_1b9

    .line 1569
    :try_start_7
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_58
    .catchall {:try_start_7 .. :try_end_c} :catchall_1b6

    move-result-object v2

    .line 1575
    :try_start_d
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1b6

    .line 1577
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1578
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1580
    :cond_1f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v4, :cond_27

    .line 1581
    if-ne v3, v7, :cond_1f

    .line 1585
    :cond_27
    if-eq v3, v4, :cond_83

    .line 1586
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no start tag found"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_32} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_32} :catch_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_32} :catch_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_32} :catch_129
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_32} :catch_181
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_32} :catch_159
    .catchall {:try_start_12 .. :try_end_32} :catchall_1ac

    .line 1608
    :catch_32
    move-exception v0

    .line 1609
    :try_start_33
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_1ac

    .line 1622
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_1b6

    .line 1625
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_1a9
    .catchall {:try_start_52 .. :try_end_55} :catchall_1b6

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_1b9

    monitor-exit v1

    .line 1631
    return-void

    .line 1570
    :catch_58
    move-exception v0

    .line 1571
    :try_start_59
    const-string/jumbo v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No existing app ops "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_59 .. :try_end_80} :catchall_1b6

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_1b9

    monitor-exit v1

    .line 1572
    return-void

    .line 1589
    :cond_83
    :try_start_83
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1590
    :cond_87
    :goto_87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v7, :cond_151

    .line 1591
    if-ne v4, v8, :cond_95

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_151

    .line 1592
    :cond_95
    if-eq v4, v8, :cond_87

    const/4 v5, 0x4

    if-eq v4, v5, :cond_87

    .line 1596
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1597
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 1598
    invoke-virtual {p0, v0}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_83 .. :try_end_aa} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_aa} :catch_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_aa} :catch_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_aa} :catch_129
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_aa} :catch_181
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_83 .. :try_end_aa} :catch_159
    .catchall {:try_start_83 .. :try_end_aa} :catchall_1ac

    goto :goto_87

    .line 1610
    :catch_ab
    move-exception v0

    .line 1611
    :try_start_ac
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_1ac

    .line 1622
    :try_start_c6
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_1b6

    .line 1625
    :try_start_cb
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf
    .catchall {:try_start_cb .. :try_end_ce} :catchall_1b6

    goto :goto_55

    .line 1626
    :catch_cf
    move-exception v0

    goto :goto_55

    .line 1599
    :cond_d1
    :try_start_d1
    const-string/jumbo v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 1600
    invoke-virtual {p0, v0}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_dd
    .catch Ljava/lang/IllegalStateException; {:try_start_d1 .. :try_end_dd} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_dd} :catch_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_dd} :catch_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d1 .. :try_end_dd} :catch_129
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_dd} :catch_181
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d1 .. :try_end_dd} :catch_159
    .catchall {:try_start_d1 .. :try_end_dd} :catchall_1ac

    goto :goto_87

    .line 1612
    :catch_de
    move-exception v0

    .line 1613
    :try_start_df
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_df .. :try_end_f9} :catchall_1ac

    .line 1622
    :try_start_f9
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_1b6

    .line 1625
    :try_start_fe
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_103
    .catchall {:try_start_fe .. :try_end_101} :catchall_1b6

    goto/16 :goto_55

    .line 1626
    :catch_103
    move-exception v0

    goto/16 :goto_55

    .line 1602
    :cond_106
    :try_start_106
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <app-ops>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1603
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1602
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_127
    .catch Ljava/lang/IllegalStateException; {:try_start_106 .. :try_end_127} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_106 .. :try_end_127} :catch_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_106 .. :try_end_127} :catch_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_106 .. :try_end_127} :catch_129
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_127} :catch_181
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_106 .. :try_end_127} :catch_159
    .catchall {:try_start_106 .. :try_end_127} :catchall_1ac

    goto/16 :goto_87

    .line 1614
    :catch_129
    move-exception v0

    .line 1615
    :try_start_12a
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_12a .. :try_end_144} :catchall_1ac

    .line 1622
    :try_start_144
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_149
    .catchall {:try_start_144 .. :try_end_149} :catchall_1b6

    .line 1625
    :try_start_149
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_14e
    .catchall {:try_start_149 .. :try_end_14c} :catchall_1b6

    goto/16 :goto_55

    .line 1626
    :catch_14e
    move-exception v0

    goto/16 :goto_55

    .line 1625
    :cond_151
    :try_start_151
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_156
    .catchall {:try_start_151 .. :try_end_154} :catchall_1b6

    goto/16 :goto_55

    .line 1626
    :catch_156
    move-exception v0

    goto/16 :goto_55

    .line 1618
    :catch_159
    move-exception v0

    .line 1619
    :try_start_15a
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catchall {:try_start_15a .. :try_end_174} :catchall_1ac

    .line 1622
    :try_start_174
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_179
    .catchall {:try_start_174 .. :try_end_179} :catchall_1b6

    .line 1625
    :try_start_179
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17e
    .catchall {:try_start_179 .. :try_end_17c} :catchall_1b6

    goto/16 :goto_55

    .line 1626
    :catch_17e
    move-exception v0

    goto/16 :goto_55

    .line 1616
    :catch_181
    move-exception v0

    .line 1617
    :try_start_182
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catchall {:try_start_182 .. :try_end_19c} :catchall_1ac

    .line 1622
    :try_start_19c
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1a1
    .catchall {:try_start_19c .. :try_end_1a1} :catchall_1b6

    .line 1625
    :try_start_1a1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a6
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1b6

    goto/16 :goto_55

    .line 1626
    :catch_1a6
    move-exception v0

    goto/16 :goto_55

    :catch_1a9
    move-exception v0

    goto/16 :goto_55

    .line 1620
    :catchall_1ac
    move-exception v0

    .line 1622
    :try_start_1ad
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1b2
    .catchall {:try_start_1ad .. :try_end_1b2} :catchall_1b6

    .line 1625
    :try_start_1b2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b5} :catch_1bc
    .catchall {:try_start_1b2 .. :try_end_1b5} :catchall_1b6

    .line 1620
    :goto_1b5
    :try_start_1b5
    throw v0
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b6

    .line 1566
    :catchall_1b6
    move-exception v0

    :try_start_1b7
    monitor-exit p0

    throw v0
    :try_end_1b9
    .catchall {:try_start_1b7 .. :try_end_1b9} :catchall_1b9

    .line 1565
    :catchall_1b9
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1626
    :catch_1bc
    move-exception v2

    goto :goto_1b5
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1686
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1687
    const-string/jumbo v0, "p"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    const/4 v0, 0x0

    .line 1689
    if-nez v1, :cond_cc

    .line 1691
    :try_start_17
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1692
    if-eqz v1, :cond_be

    .line 1693
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1694
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1693
    invoke-interface {v1, p2, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1695
    if-eqz v1, :cond_33

    .line 1696
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2e} :catch_bf

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_bb

    const/4 v0, 0x1

    :cond_33
    :goto_33
    move v1, v0

    .line 1709
    :goto_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1711
    :cond_38
    :goto_38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1ed

    .line 1712
    const/4 v4, 0x3

    if-ne v0, v4, :cond_48

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_1ed

    .line 1713
    :cond_48
    const/4 v4, 0x3

    if-eq v0, v4, :cond_38

    const/4 v4, 0x4

    if-eq v0, v4, :cond_38

    .line 1717
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1718
    const-string/jumbo v4, "op"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 1719
    new-instance v4, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v0, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v2, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1720
    const-string/jumbo v0, "m"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_7c

    .line 1722
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1724
    :cond_7c
    const-string/jumbo v0, "t"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    if-eqz v0, :cond_d3

    .line 1726
    iget-object v5, v4, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1727
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1728
    const/4 v0, 0x0

    array-length v6, v5

    :goto_94
    if-ge v0, v6, :cond_d3

    aget-object v7, v5, v0

    .line 1729
    if-eqz v7, :cond_b8

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b8

    .line 1730
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1731
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_b8

    .line 1732
    iget-object v7, v4, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 1696
    :cond_bb
    const/4 v0, 0x0

    goto/16 :goto_33

    .line 1701
    :cond_be
    return-void

    .line 1703
    :catch_bf
    move-exception v1

    .line 1704
    const-string/jumbo v3, "AppOps"

    const-string/jumbo v4, "Could not contact PackageManager"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    goto/16 :goto_34

    .line 1707
    :cond_cc
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    goto/16 :goto_34

    .line 1737
    :cond_d3
    const-string/jumbo v0, "nm"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    if-eqz v0, :cond_104

    .line 1739
    iget-object v5, v4, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1740
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1741
    const/4 v0, 0x0

    array-length v6, v5

    :goto_eb
    if-ge v0, v6, :cond_104

    aget-object v7, v5, v0

    .line 1742
    if-eqz v7, :cond_101

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_101

    .line 1743
    iget-object v8, v4, Lcom/android/server/AppOpsService$Op;->appVersionNames:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    :cond_101
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 1747
    :cond_104
    const-string/jumbo v0, "tm"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1748
    if-eqz v0, :cond_143

    .line 1749
    iget-object v5, v4, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1750
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1751
    const/4 v0, 0x0

    array-length v6, v5

    :goto_11c
    if-ge v0, v6, :cond_143

    aget-object v7, v5, v0

    .line 1752
    if-eqz v7, :cond_140

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_140

    .line 1753
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1754
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_140

    .line 1755
    iget-object v7, v4, Lcom/android/server/AppOpsService$Op;->appVersionTimes:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1751
    :cond_140
    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    .line 1760
    :cond_143
    const-string/jumbo v0, "ti"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1761
    if-eqz v0, :cond_153

    .line 1762
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 1764
    :cond_153
    const-string/jumbo v0, "vi"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1765
    if-eqz v0, :cond_163

    .line 1766
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/AppOpsService$Op;->versionIndex:I

    .line 1768
    :cond_163
    const-string/jumbo v0, "r"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    if-eqz v0, :cond_173

    .line 1770
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1772
    :cond_173
    const-string/jumbo v0, "d"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1773
    if-eqz v0, :cond_183

    .line 1774
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1776
    :cond_183
    const-string/jumbo v0, "pu"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1777
    if-eqz v0, :cond_193

    .line 1778
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1780
    :cond_193
    const-string/jumbo v0, "pp"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    if-eqz v0, :cond_19f

    .line 1782
    iput-object v0, v4, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1785
    :cond_19f
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v5

    .line 1786
    iget-object v0, v5, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_1af

    .line 1787
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v5, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1790
    :cond_1af
    iget-object v0, v5, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    .line 1791
    if-nez v0, :cond_1c3

    .line 1792
    new-instance v0, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v0, p2, v5, v1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1793
    iget-object v5, v5, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    :cond_1c3
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v5, v4}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_38

    .line 1797
    :cond_1ca
    const-string/jumbo v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1798
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_38

    .line 1802
    :cond_1ed
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1635
    const-string/jumbo v0, "n"

    invoke-interface {p1, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1636
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1638
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v7, :cond_7f

    .line 1639
    if-ne v2, v8, :cond_20

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_7f

    .line 1640
    :cond_20
    if-eq v2, v8, :cond_12

    const/4 v3, 0x4

    if-eq v2, v3, :cond_12

    .line 1644
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1645
    const-string/jumbo v3, "op"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1646
    const-string/jumbo v2, "n"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1647
    const-string/jumbo v3, "m"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1648
    invoke-direct {p0, v0, v7}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v4

    .line 1649
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v5, :cond_57

    .line 1650
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1652
    :cond_57
    iget-object v4, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_12

    .line 1654
    :cond_5d
    const-string/jumbo v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <uid-ops>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1655
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12

    .line 1659
    :cond_7f
    return-void
.end method

.method public removeUser(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2695
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2696
    monitor-enter p0

    .line 2697
    :try_start_7
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2698
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-ltz v1, :cond_21

    .line 2699
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2700
    invoke-virtual {v0, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 2698
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10

    .line 2702
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    monitor-exit p0

    .line 2704
    return-void

    .line 2696
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 21

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    .line 782
    const/4 v6, 0x0

    .line 781
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 784
    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    .line 783
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 786
    const/4 v2, -0x1

    .line 787
    if-eqz p2, :cond_2e

    .line 789
    :try_start_22
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 790
    const/16 v4, 0x2000

    .line 789
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_ad

    move-result v2

    :cond_2e
    move v7, v2

    .line 796
    :goto_2f
    const/4 v3, 0x0

    .line 797
    monitor-enter p0

    .line 798
    const/4 v5, 0x0

    .line 799
    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    :goto_3d
    if-ltz v11, :cond_191

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 802
    iget-object v9, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 803
    if-eqz v9, :cond_b5

    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v4, v7, :cond_54

    const/4 v4, -0x1

    if-ne v7, v4, :cond_b5

    .line 804
    :cond_54
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 805
    add-int/lit8 v4, v4, -0x1

    move v8, v4

    :goto_5b
    if-ltz v8, :cond_b5

    .line 806
    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 807
    invoke-static {v10}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 808
    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 809
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_73

    .line 810
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 812
    :cond_73
    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    array-length v14, v13

    move v6, v4

    move-object v4, v3

    :goto_7d
    if-ge v6, v14, :cond_b0

    aget-object v15, v13, v6

    .line 813
    iget v0, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v16, v0

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 813
    move/from16 v0, v16

    invoke-static {v4, v10, v0, v15, v3}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    .line 815
    iget v0, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v16, v0

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 815
    move/from16 v0, v16

    invoke-static {v4, v10, v0, v15, v3}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    .line 812
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_7d

    .line 791
    :catch_ad
    move-exception v3

    move v7, v2

    goto :goto_2f

    :cond_b0
    move-object v3, v4

    .line 805
    :cond_b1
    add-int/lit8 v4, v8, -0x1

    move v8, v4

    goto :goto_5b

    .line 822
    :cond_b5
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_c0

    move v2, v5

    .line 799
    :goto_ba
    add-int/lit8 v4, v11, -0x1

    move v11, v4

    move v5, v2

    goto/16 :goto_3d

    .line 826
    :cond_c0
    const/4 v4, -0x1

    if-eq v12, v4, :cond_cd

    .line 827
    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v12, v4, :cond_cd

    move v2, v5

    .line 829
    goto :goto_ba

    .line 832
    :cond_cd
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 833
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v3

    .line 834
    :cond_d8
    :goto_d8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 835
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 836
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 837
    if-eqz p2, :cond_f6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_d8

    .line 841
    :cond_f6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 842
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move v10, v8

    move-object v9, v6

    move v6, v5

    :goto_105
    if-ltz v10, :cond_171

    .line 843
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    .line 844
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v8

    if-eqz v8, :cond_16c

    .line 845
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v14, v5, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14

    if-eq v8, v14, :cond_16c

    .line 846
    iget v6, v5, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    iput v6, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 847
    const/4 v8, 0x1

    .line 848
    iget v14, v5, Lcom/android/server/AppOpsService$Op;->op:I

    iget v15, v5, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 849
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v0, v5, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 848
    invoke-static {v9, v14, v15, v4, v6}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v9

    .line 850
    iget v14, v5, Lcom/android/server/AppOpsService$Op;->op:I

    iget v15, v5, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 851
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 850
    invoke-static {v9, v14, v15, v4, v6}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v6

    .line 852
    iget-object v9, v5, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_16f

    iget-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_16f

    .line 853
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->removeAt(I)V

    move v5, v8

    .line 842
    :goto_166
    add-int/lit8 v8, v10, -0x1

    move v10, v8

    move-object v9, v6

    move v6, v5

    goto :goto_105

    :cond_16c
    move v5, v6

    move-object v6, v9

    .line 845
    goto :goto_166

    :cond_16f
    move v5, v8

    .line 852
    goto :goto_166

    .line 857
    :cond_171
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_17a

    .line 858
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    :cond_17a
    move v5, v6

    move-object v6, v9

    goto/16 :goto_d8

    .line 861
    :cond_17e
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1dc

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    move v2, v5

    move-object v3, v6

    goto/16 :goto_ba

    .line 866
    :cond_191
    if-eqz v5, :cond_196

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_196
    .catchall {:try_start_32 .. :try_end_196} :catchall_1d6

    :cond_196
    monitor-exit p0

    .line 870
    if-eqz v3, :cond_1d9

    .line 871
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 872
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Callback;

    .line 873
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 874
    const/4 v4, 0x0

    move v5, v4

    :goto_1bb
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_1a1

    .line 875
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ChangeRec;

    .line 877
    :try_start_1c7
    iget-object v7, v3, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    iget v8, v4, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    iget v9, v4, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    iget-object v4, v4, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_1d2
    .catch Landroid/os/RemoteException; {:try_start_1c7 .. :try_end_1d2} :catch_1da

    .line 874
    :goto_1d2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1bb

    .line 797
    :catchall_1d6
    move-exception v2

    monitor-exit p0

    throw v2

    .line 883
    :cond_1d9
    return-void

    .line 878
    :catch_1da
    move-exception v4

    goto :goto_1d2

    :cond_1dc
    move v2, v5

    move-object v3, v6

    goto/16 :goto_ba
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 1035
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1036
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1037
    monitor-enter p0

    .line 1038
    :try_start_8
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1039
    if-nez v0, :cond_52

    .line 1040
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1041
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v0

    .line 1043
    :goto_1d
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1044
    if-eqz p4, :cond_4a

    .line 1045
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    .line 1046
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1047
    if-eqz p5, :cond_47

    .line 1048
    array-length v4, p5

    .line 1049
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move v0, v1

    .line 1050
    :goto_35
    if-ge v0, v4, :cond_47

    .line 1051
    aget-object v1, p5, v0

    .line 1052
    if-eqz v1, :cond_44

    .line 1053
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 1057
    :cond_47
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_4f

    :cond_4a
    monitor-exit p0

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 1061
    return-void

    .line 1037
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_52
    move-object v2, v0

    goto :goto_1d
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v0, v3, :cond_1c

    .line 678
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.UPDATE_APP_OPS_STATS"

    .line 679
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 678
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 681
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 683
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 684
    monitor-enter p0

    .line 685
    const/4 v0, 0x0

    :try_start_25
    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, v3, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 687
    if-eqz v4, :cond_6b

    .line 688
    iget v0, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v0, p4, :cond_6b

    .line 689
    iput p4, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 690
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 691
    if-eqz v0, :cond_47

    .line 693
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 697
    :cond_47
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 698
    if-eqz v0, :cond_95

    .line 699
    if-nez v1, :cond_58

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    :cond_58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 704
    :goto_5c
    iget v1, v4, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    if-ne p4, v1, :cond_67

    .line 707
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 709
    :cond_67
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_6a
    .catchall {:try_start_25 .. :try_end_6a} :catchall_87

    move-object v1, v0

    :cond_6b
    monitor-exit p0

    .line 713
    if-eqz v1, :cond_8d

    .line 717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 719
    :goto_72
    :try_start_72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_8e

    move-result v0

    if-ge v2, v0, :cond_8a

    .line 721
    :try_start_78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    iget-object v0, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v3, p2, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_83} :catch_93
    .catchall {:try_start_78 .. :try_end_83} :catchall_8e

    .line 719
    :goto_83
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_72

    .line 684
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    .line 726
    :cond_8a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 729
    :cond_8d
    return-void

    .line 725
    :catchall_8e
    move-exception v0

    .line 726
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    throw v0

    .line 722
    :catch_93
    move-exception v0

    goto :goto_83

    :cond_95
    move-object v0, v1

    goto :goto_5c
.end method

.method public setUidMode(III)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 566
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 567
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 568
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 567
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 570
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 571
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v7

    .line 573
    monitor-enter p0

    .line 574
    :try_start_24
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 576
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_93

    move-result-object v1

    .line 577
    if-nez v1, :cond_7d

    .line 578
    if-ne p3, v0, :cond_33

    monitor-exit p0

    .line 579
    return-void

    .line 581
    :cond_33
    :try_start_33
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v0, p2}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 582
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 583
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 585
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_93

    :cond_4c
    :goto_4c
    monitor-exit p0

    .line 608
    invoke-static {p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 611
    monitor-enter p0

    .line 612
    :try_start_52
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 613
    if-eqz v0, :cond_bc

    .line 614
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v2, v5

    .line 615
    :goto_61
    if-ge v2, v4, :cond_bc

    .line 616
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Callback;

    .line 617
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 618
    invoke-static {v6, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 619
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 620
    invoke-virtual {v3, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_52 .. :try_end_79} :catchall_101

    .line 615
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_61

    .line 586
    :cond_7d
    :try_start_7d
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v2, :cond_96

    .line 587
    if-eq p3, v0, :cond_4c

    .line 588
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 589
    iget-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_92
    .catchall {:try_start_7d .. :try_end_92} :catchall_93

    goto :goto_4c

    .line 573
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0

    .line 593
    :cond_96
    :try_start_96
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_93

    move-result v2

    if-ne v2, p3, :cond_a0

    monitor-exit p0

    .line 594
    return-void

    .line 596
    :cond_a0
    if-ne p3, v0, :cond_b6

    .line 597
    :try_start_a2
    iget-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->delete(I)V

    .line 598
    iget-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_b2

    .line 599
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 604
    :cond_b2
    :goto_b2
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_4c

    .line 602
    :cond_b6
    iget-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_bb
    .catchall {:try_start_a2 .. :try_end_bb} :catchall_93

    goto :goto_b2

    .line 624
    :cond_bc
    :try_start_bc
    array-length v9, v8

    move v6, v5

    :goto_be
    if-ge v6, v9, :cond_fd

    aget-object v10, v8, v6

    .line 625
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 626
    if-eqz v0, :cond_f7

    .line 627
    if-nez v3, :cond_d3

    .line 628
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 630
    :cond_d3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v11

    move v4, v5

    .line 631
    :goto_d8
    if-ge v4, v11, :cond_f7

    .line 632
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Callback;

    .line 633
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 634
    if-nez v2, :cond_f0

    .line 635
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 636
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_f0
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_bc .. :try_end_f3} :catchall_101

    .line 631
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_d8

    :cond_f7
    move-object v0, v3

    .line 624
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v3, v0

    goto :goto_be

    :cond_fd
    monitor-exit p0

    .line 644
    if-nez v3, :cond_104

    .line 645
    return-void

    .line 611
    :catchall_101
    move-exception v0

    monitor-exit p0

    throw v0

    .line 651
    :cond_104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move v6, v5

    .line 653
    :goto_109
    :try_start_109
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_14d

    .line 654
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 655
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;
    :try_end_11b
    .catchall {:try_start_109 .. :try_end_11b} :catchall_148

    .line 657
    if-nez v1, :cond_127

    .line 658
    :try_start_11d
    iget-object v0, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v7, p2, v1}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V

    .line 653
    :cond_123
    :goto_123
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_109

    .line 660
    :cond_127
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v10

    move v4, v5

    .line 661
    :goto_12c
    if-ge v4, v10, :cond_123

    .line 662
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 663
    iget-object v11, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v11, v7, p2, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_139} :catch_13d
    .catchall {:try_start_11d .. :try_end_139} :catchall_148

    .line 661
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12c

    .line 666
    :catch_13d
    move-exception v0

    .line 667
    :try_start_13e
    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Error dispatching op op change"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_147
    .catchall {:try_start_13e .. :try_end_147} :catchall_148

    goto :goto_123

    .line 670
    :catchall_148
    move-exception v0

    .line 671
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw v0

    .line 671
    :cond_14d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 2615
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 2616
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 2617
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2616
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2619
    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_40

    .line 2620
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 2622
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 2624
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2628
    :cond_40
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2629
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2631
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2600
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2601
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2602
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    .line 2603
    :goto_f
    const/16 v0, 0x4a

    if-ge v1, v0, :cond_26

    .line 2604
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v0

    .line 2605
    if-eqz v0, :cond_23

    .line 2606
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2603
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2610
    :cond_26
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 399
    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    monitor-enter p0

    .line 402
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_13

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 404
    const/4 v0, 0x1

    :cond_13
    monitor-exit p0

    .line 407
    if-eqz v0, :cond_19

    .line 408
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 410
    :cond_19
    return-void

    .line 401
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 13

    .prologue
    .line 1233
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1234
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1235
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    if-nez v1, :cond_e

    .line 1237
    const/4 v0, 0x1

    return v0

    .line 1239
    :cond_e
    sget-object v0, Landroid/app/AppOpsManager;->XtcAppOpsActions:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1240
    const/4 v0, 0x0

    return v0

    .line 1242
    :cond_1c
    check-cast p1, Lcom/android/server/AppOpsService$ClientState;

    .line 1243
    monitor-enter p0

    .line 1244
    const/4 v0, 0x1

    :try_start_20
    invoke-direct {p0, p3, v1, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1245
    if-nez v0, :cond_5d

    .line 1246
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_5a

    const-string/jumbo v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1247
    const-string/jumbo v3, " package "

    .line 1246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_20 .. :try_end_5a} :catchall_1f8

    .line 1248
    :cond_5a
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1250
    :cond_5d
    const/4 v2, 0x1

    :try_start_5e
    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1251
    invoke-direct {p0, p3, p2, v1}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_1f8

    move-result v3

    if-eqz v3, :cond_6b

    .line 1252
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1254
    :cond_6b
    :try_start_6b
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 1255
    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1256
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v5, :cond_d1

    .line 1257
    iget-object v4, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 1258
    if-eqz v4, :cond_d1

    .line 1259
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_c9

    const-string/jumbo v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "noteOperation: reject #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1260
    const-string/jumbo v5, " ("

    .line 1259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1260
    const-string/jumbo v5, ") uid "

    .line 1259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1260
    const-string/jumbo v5, " package "

    .line 1259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_cf
    .catchall {:try_start_6b .. :try_end_cf} :catchall_1f8

    monitor-exit p0

    .line 1263
    return v4

    .line 1266
    :cond_d1
    if-eq v3, p2, :cond_132

    const/4 v4, 0x1

    :try_start_d4
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 1267
    :goto_d8
    iget v4, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v4, :cond_134

    .line 1268
    sget-boolean v4, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v4, :cond_128

    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startOperation: reject #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1269
    const-string/jumbo v5, " ("

    .line 1268
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1269
    const-string/jumbo v5, ") uid "

    .line 1268
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1269
    const-string/jumbo v5, " package "

    .line 1268
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1272
    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_130
    .catchall {:try_start_d4 .. :try_end_130} :catchall_1f8

    monitor-exit p0

    return v0

    :cond_132
    move-object v0, v2

    .line 1266
    goto :goto_d8

    .line 1274
    :cond_134
    :try_start_134
    const-string/jumbo v0, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startOperation: allowing code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1275
    const-string/jumbo v4, " package "

    .line 1274
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v0, :cond_1bf

    .line 1277
    const-wide/16 v0, 0x0

    .line 1278
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    if-lez v3, :cond_1d1

    .line 1279
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1283
    :cond_17e
    :goto_17e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1284
    sub-long v0, v4, v0

    const-wide/32 v6, 0xea60

    cmp-long v0, v0, v6

    if-lez v0, :cond_1b8

    .line 1285
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v6, 0x32

    cmp-long v0, v0, v6

    if-nez v0, :cond_1ee

    .line 1286
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1287
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 1288
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    int-to-long v0, v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-nez v0, :cond_1b5

    .line 1289
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->timesIndex:I

    .line 1294
    :cond_1b5
    :goto_1b5
    invoke-direct {p0, v2, p4, p3}, Lcom/android/server/AppOpsService;->recordPackageVersion(Lcom/android/server/AppOpsService$Op;Ljava/lang/String;I)V

    .line 1297
    :cond_1b8
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1298
    const/4 v0, -0x1

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1300
    :cond_1bf
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1301
    iget-object v0, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ce

    .line 1302
    iget-object v0, p1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ce
    .catchall {:try_start_134 .. :try_end_1ce} :catchall_1f8

    .line 1304
    :cond_1ce
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1280
    :cond_1d1
    :try_start_1d1
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17e

    .line 1281
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_17e

    .line 1292
    :cond_1ee
    iget-object v0, v2, Lcom/android/server/AppOpsService$Op;->times:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f7
    .catchall {:try_start_1d1 .. :try_end_1f7} :catchall_1f8

    goto :goto_1b5

    .line 1243
    :catchall_1f8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 887
    if-nez p3, :cond_4

    .line 888
    return-void

    .line 890
    :cond_4
    monitor-enter p0

    .line 891
    if-eq p1, v3, :cond_b

    :try_start_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 892
    :cond_b
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 893
    if-nez v0, :cond_5f

    .line 894
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 895
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 897
    :goto_28
    if-eq p1, v3, :cond_41

    .line 898
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 899
    if-nez v0, :cond_3e

    .line 900
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 901
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 903
    :cond_3e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_41
    if-eqz p2, :cond_5a

    .line 906
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 907
    if-nez v0, :cond_57

    .line 908
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 909
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_57
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_5c

    :cond_5a
    monitor-exit p0

    .line 914
    return-void

    .line 890
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5f
    move-object v1, v0

    goto :goto_28
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    .prologue
    .line 918
    if-nez p1, :cond_3

    .line 919
    return-void

    .line 921
    :cond_3
    monitor-enter p0

    .line 922
    :try_start_4
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 923
    if-eqz v0, :cond_5f

    .line 924
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 925
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1e
    if-ltz v2, :cond_3a

    .line 926
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 927
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_36

    .line 929
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 925
    :cond_36
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1e

    .line 932
    :cond_3a
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_43
    if-ltz v2, :cond_5f

    .line 933
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 934
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_5b

    .line 936
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_61

    .line 932
    :cond_5b
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_43

    :cond_5f
    monitor-exit p0

    .line 941
    return-void

    .line 921
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    monitor-enter p0

    .line 272
    :try_start_3
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_c
    if-ltz v5, :cond_ab

    .line 273
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 275
    iget v1, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 277
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 278
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->removeAt(I)V

    move v3, v2

    .line 272
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_c

    .line 283
    :cond_2f
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 284
    if-eqz v1, :cond_2b

    .line 288
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 289
    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 290
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Ops;
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_a8

    .line 291
    const/4 v4, -0x1

    .line 293
    :try_start_48
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 295
    iget-object v9, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 294
    const/16 v10, 0x2000

    .line 293
    invoke-interface {v7, v8, v10, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5b} :catch_c2
    .catchall {:try_start_48 .. :try_end_5b} :catchall_a8

    move-result v4

    .line 298
    :goto_5c
    :try_start_5c
    iget-object v7, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v4, v7, :cond_c4

    .line 299
    const-string/jumbo v3, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Pruning old package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 300
    const-string/jumbo v8, "/"

    .line 299
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 300
    iget-object v1, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 299
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    const-string/jumbo v7, ": new uid="

    .line 299
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v1, v2

    :goto_9a
    move v3, v1

    goto :goto_3b

    .line 306
    :cond_9c
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 307
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_a7
    .catchall {:try_start_5c .. :try_end_a7} :catchall_a8

    goto :goto_2b

    .line 270
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :cond_ab
    if-eqz v3, :cond_b0

    .line 311
    :try_start_ad
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_a8

    :cond_b0
    monitor-exit p0

    .line 316
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 315
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 318
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 361
    return-void

    .line 296
    :catch_c2
    move-exception v7

    goto :goto_5c

    :cond_c4
    move v1, v3

    goto :goto_9a
.end method

.method public uidRemoved(I)V
    .registers 3

    .prologue
    .line 390
    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 392
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 393
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    .line 396
    return-void

    .line 390
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method writeState()V
    .registers 19

    .prologue
    .line 1805
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 1806
    const/4 v2, 0x0

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1ce

    move-result-object v8

    .line 1810
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_a0
    .catchall {:try_start_c .. :try_end_13} :catchall_1ce

    move-result-object v9

    .line 1817
    :try_start_14
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1818
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1819
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1820
    const-string/jumbo v2, "app-ops"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1823
    const/4 v2, 0x0

    move v3, v2

    :goto_3c
    if-ge v3, v4, :cond_c9

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 1825
    iget-object v5, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v5, :cond_c4

    iget-object v5, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_c4

    .line 1826
    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    invoke-interface {v10, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1827
    const-string/jumbo v5, "n"

    iget v6, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-interface {v10, v11, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1828
    iget-object v5, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1829
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 1830
    const/4 v2, 0x0

    :goto_6f
    if-ge v2, v6, :cond_bd

    .line 1831
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 1832
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 1833
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v10, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1834
    const-string/jumbo v13, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-interface {v10, v14, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1835
    const-string/jumbo v11, "m"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1836
    const-string/jumbo v11, "op"

    const/4 v12, 0x0

    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_9d} :catch_1aa
    .catchall {:try_start_14 .. :try_end_9d} :catchall_1ce

    .line 1830
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 1811
    :catch_a0
    move-exception v2

    .line 1812
    :try_start_a1
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a1 .. :try_end_bb} :catchall_1ce

    monitor-exit v7

    .line 1813
    return-void

    .line 1838
    :cond_bd
    :try_start_bd
    const-string/jumbo v2, "uid"

    const/4 v5, 0x0

    invoke-interface {v10, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1823
    :cond_c4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3c

    .line 1842
    :cond_c9
    if-eqz v8, :cond_2d3

    .line 1843
    const/4 v3, 0x0

    .line 1844
    const/4 v2, 0x0

    move v6, v2

    :goto_ce
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_2ca

    .line 1845
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 1846
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e6

    .line 1847
    if-eqz v3, :cond_ed

    .line 1848
    const-string/jumbo v3, "pkg"

    const/4 v4, 0x0

    invoke-interface {v10, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1850
    :cond_ed
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1851
    const-string/jumbo v4, "pkg"

    const/4 v5, 0x0

    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1852
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {v10, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v5, v3

    .line 1854
    :goto_100
    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    invoke-interface {v10, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1855
    const-string/jumbo v3, "n"

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-interface {v10, v11, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    monitor-enter p0
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_117} :catch_1aa
    .catchall {:try_start_bd .. :try_end_117} :catchall_1ce

    .line 1857
    :try_start_117
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v11}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    .line 1860
    if-eqz v3, :cond_1bd

    .line 1861
    const-string/jumbo v4, "p"

    iget-boolean v3, v3, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-interface {v10, v11, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_135
    .catchall {:try_start_117 .. :try_end_135} :catchall_1cb

    :goto_135
    :try_start_135
    monitor-exit p0

    .line 1866
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 1867
    const/4 v2, 0x0

    move v4, v2

    :goto_13c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_2bd

    .line 1868
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    .line 1869
    const-string/jumbo v3, "op"

    const/4 v12, 0x0

    invoke-interface {v10, v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1870
    const-string/jumbo v3, "n"

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1871
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    if-eq v3, v12, :cond_17b

    .line 1872
    const-string/jumbo v3, "m"

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    :cond_17b
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getTimes()Ljava/util/List;

    move-result-object v12

    .line 1875
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1dc

    .line 1876
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1877
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_18e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1878
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1879
    const-string/jumbo v3, ","

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_1a9} :catch_1aa
    .catchall {:try_start_135 .. :try_end_1a9} :catchall_1ce

    goto :goto_18e

    .line 1937
    :catch_1aa
    move-exception v2

    .line 1938
    :try_start_1ab
    const-string/jumbo v3, "AppOps"

    const-string/jumbo v4, "Failed to write state, restoring backup."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1bb
    .catchall {:try_start_1ab .. :try_end_1bb} :catchall_1ce

    :goto_1bb
    monitor-exit v7

    .line 1942
    return-void

    .line 1863
    :cond_1bd
    :try_start_1bd
    const-string/jumbo v3, "p"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-interface {v10, v11, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1c9
    .catchall {:try_start_1bd .. :try_end_1c9} :catchall_1cb

    goto/16 :goto_135

    .line 1856
    :catchall_1cb
    move-exception v2

    :try_start_1cc
    monitor-exit p0

    throw v2
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1ce} :catch_1aa
    .catchall {:try_start_1cc .. :try_end_1ce} :catchall_1ce

    .line 1805
    :catchall_1ce
    move-exception v2

    monitor-exit v7

    throw v2

    .line 1881
    :cond_1d1
    :try_start_1d1
    const-string/jumbo v3, "t"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v10, v14, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1883
    :cond_1dc
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getAppVersionNames()Ljava/util/List;

    move-result-object v3

    .line 1884
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_210

    .line 1885
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1886
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1ef
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_205

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1887
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    const-string/jumbo v3, ","

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ef

    .line 1890
    :cond_205
    const-string/jumbo v3, "nm"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v10, v14, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1892
    :cond_210
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getAppVersionTimes()Ljava/util/List;

    move-result-object v3

    .line 1893
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_248

    .line 1894
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1895
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_223
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1896
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1897
    const-string/jumbo v3, ","

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_223

    .line 1899
    :cond_23d
    const-string/jumbo v3, "tm"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1901
    :cond_248
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getTimesIndex()I

    move-result v3

    .line 1902
    if-eqz v3, :cond_25a

    .line 1903
    const-string/jumbo v12, "ti"

    int-to-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-interface {v10, v13, v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1905
    :cond_25a
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getVersionIndex()I

    move-result v3

    .line 1906
    if-eqz v3, :cond_26c

    .line 1907
    const-string/jumbo v12, "vi"

    int-to-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-interface {v10, v13, v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1909
    :cond_26c
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v12

    .line 1910
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_281

    .line 1911
    const-string/jumbo v3, "r"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1913
    :cond_281
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v3

    .line 1914
    if-eqz v3, :cond_292

    .line 1915
    const-string/jumbo v12, "d"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-interface {v10, v13, v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1917
    :cond_292
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v3

    .line 1918
    const/4 v12, -0x1

    if-eq v3, v12, :cond_2a4

    .line 1919
    const-string/jumbo v12, "pu"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-interface {v10, v13, v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1921
    :cond_2a4
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1922
    if-eqz v2, :cond_2b1

    .line 1923
    const-string/jumbo v3, "pp"

    const/4 v12, 0x0

    invoke-interface {v10, v12, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    :cond_2b1
    const-string/jumbo v2, "op"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1867
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_13c

    .line 1927
    :cond_2bd
    const-string/jumbo v2, "uid"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1844
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-object v3, v5

    goto/16 :goto_ce

    .line 1929
    :cond_2ca
    if-eqz v3, :cond_2d3

    .line 1930
    const-string/jumbo v2, "pkg"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1934
    :cond_2d3
    const-string/jumbo v2, "app-ops"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1935
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2e4
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_2e4} :catch_1aa
    .catchall {:try_start_1d1 .. :try_end_2e4} :catchall_1ce

    goto/16 :goto_1bb

    :cond_2e6
    move-object v5, v3

    goto/16 :goto_100
.end method
