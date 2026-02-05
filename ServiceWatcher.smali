.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$1;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBoundComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 83
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    .line 85
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    .line 324
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 110
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 114
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 115
    iput-object p8, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    if-eqz v1, :cond_54

    .line 123
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4b

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_4b
    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 135
    :goto_4d
    invoke-static {p1, v2}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 136
    return-void

    .line 130
    :cond_54
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_5d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_5d
    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    goto :goto_4d
.end method

.method private bindBestPackageLocked(Ljava/lang/String;Z)Z
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 202
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    if-eqz p1, :cond_11

    .line 204
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :cond_11
    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 208
    iget v4, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 207
    const v6, 0x10000080

    .line 206
    invoke-virtual {v3, v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_a4

    .line 213
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move-object v3, v0

    move v4, v5

    :goto_25
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 214
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 220
    :try_start_3b
    iget-object v10, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const v11, 0x10000040

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 222
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v10}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 223
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resolves service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 224
    const-string/jumbo v7, ", but has wrong signature, ignoring"

    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_72} :catch_79

    move v0, v1

    move-object v1, v3

    move v3, v4

    :goto_75
    move v4, v3

    move-object v3, v1

    move v1, v0

    goto :goto_25

    .line 227
    :catch_79
    move-exception v0

    .line 228
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    move-object v1, v3

    move v3, v4

    .line 229
    goto :goto_75

    .line 235
    :cond_83
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_f0

    .line 236
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 237
    const-string/jumbo v10, "serviceVersion"

    .line 236
    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 238
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "serviceIsMultiuser"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 241
    :goto_9f
    if-le v7, v4, :cond_ec

    move-object v1, v6

    move v3, v7

    .line 244
    goto :goto_75

    :cond_a4
    move v1, v2

    move-object v3, v0

    move v4, v5

    .line 259
    :cond_a7
    if-nez v3, :cond_c8

    .line 260
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Odd, no component found for service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 262
    return v2

    .line 265
    :cond_c8
    if-eqz v1, :cond_e9

    move v0, v2

    .line 266
    :goto_cb
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 267
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    if-ne v4, v1, :cond_dc

    iget v1, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    if-ne v0, v1, :cond_dc

    move v2, v8

    .line 268
    :cond_dc
    if-nez p2, :cond_e2

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_e8

    .line 269
    :cond_e2
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 270
    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Landroid/content/ComponentName;II)V

    .line 272
    :cond_e8
    return v8

    .line 265
    :cond_e9
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    goto :goto_cb

    :cond_ec
    move v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_75

    :cond_f0
    move v0, v2

    move v7, v5

    goto :goto_9f
.end method

.method private bindToPackageLocked(Landroid/content/ComponentName;II)V
    .registers 8

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 292
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 293
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    .line 294
    iput p3, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    .line 296
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 298
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 297
    const v3, 0x40000005    # 2.0000012f

    .line 296
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 299
    return-void
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_f
    if-ge v1, v4, :cond_4f

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    :try_start_17
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 95
    const v6, 0x100040

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 97
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_2f} :catch_33

    .line 91
    :goto_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 99
    :catch_33
    move-exception v5

    .line 100
    const-string/jumbo v5, "ServiceWatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " not found"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 103
    :cond_4f
    return-object v3
.end method

.method private isServiceMissing()Z
    .registers 5

    .prologue
    const/high16 v3, 0xc0000

    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 303
    if-nez p0, :cond_4

    return v1

    .line 306
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 307
    array-length v3, p0

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_15

    aget-object v4, p0, v0

    .line 308
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 312
    :cond_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 314
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_2d
    return v1
.end method

.method private unbindLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 278
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 279
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 280
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    .line 281
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    .line 282
    if-eqz v0, :cond_16

    .line 284
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 286
    :cond_16
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 389
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getBestVersion()I
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_3
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 395
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 401
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 367
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    .line 368
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 369
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_38

    :cond_1c
    :goto_1c
    monitor-exit v1

    .line 375
    return-void

    .line 372
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_38

    goto :goto_1c

    .line 364
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    .line 386
    return-void

    .line 379
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->isServiceMissing()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 150
    :cond_a
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_d
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_41

    monitor-exit v1

    .line 155
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    .line 170
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 174
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 177
    :cond_40
    return v6

    .line 150
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public switchUser(I)V
    .registers 5

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_3
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 409
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 411
    return-void

    .line 407
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unlockUser(I)V
    .registers 5

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_3
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    if-ne p1, v0, :cond_d

    .line 416
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v1

    .line 419
    return-void

    .line 414
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
