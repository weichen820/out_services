.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    .line 47
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 85
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 78
    :cond_b
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_2
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AttributeCache$Package;

    .line 124
    if-eqz v0, :cond_22

    .line 125
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 126
    if-eqz v1, :cond_67

    .line 127
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AttributeCache$Entry;
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_64

    .line 128
    if-eqz v2, :cond_67

    monitor-exit p0

    .line 129
    return-object v2

    .line 135
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 136
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_2d} :catch_32
    .catchall {:try_start_22 .. :try_end_2d} :catchall_64

    move-result-object v1

    .line 137
    if-nez v1, :cond_35

    monitor-exit p0

    .line 138
    return-object v3

    .line 140
    :catch_32
    move-exception v0

    monitor-exit p0

    .line 141
    return-object v3

    .line 143
    :cond_35
    :try_start_35
    new-instance v0, Lcom/android/server/AttributeCache$Package;

    invoke-direct {v0, v1}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v3

    .line 147
    :goto_41
    if-nez v0, :cond_4f

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    invoke-static {v1}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_64

    .line 153
    :cond_4f
    :try_start_4f
    new-instance v2, Lcom/android/server/AttributeCache$Entry;

    iget-object v4, v1, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    .line 154
    iget-object v1, v1, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    invoke-direct {v2, v4, v1}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 155
    invoke-virtual {v0, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4f .. :try_end_5f} :catch_61
    .catchall {:try_start_4f .. :try_end_5f} :catchall_64

    monitor-exit p0

    .line 160
    return-object v2

    .line 156
    :catch_61
    move-exception v0

    monitor-exit p0

    .line 157
    return-object v3

    .line 120
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_67
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_41
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 89
    monitor-enter p0

    .line 90
    :try_start_2
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AttributeCache$Package;

    .line 91
    if-eqz v0, :cond_42

    move v5, v4

    .line 92
    :goto_d
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_39

    .line 93
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v3, v4

    .line 94
    :goto_22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v3, v2, :cond_35

    .line 95
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AttributeCache$Entry;

    invoke-virtual {v2}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    .line 94
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_22

    .line 92
    :cond_35
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_d

    .line 99
    :cond_39
    iget-object v0, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_44

    :cond_42
    monitor-exit p0

    .line 103
    return-void

    .line 89
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 108
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 114
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 117
    return-void

    .line 106
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
