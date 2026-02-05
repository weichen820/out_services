.class final Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
.super Landroid/os/storage/StorageManagerInternal;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StorageManagerInternalImpl"
.end annotation


# instance fields
.field private final mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 3

    .prologue
    .line 4139
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 4142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4141
    iput-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4139
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
    .registers 3

    .prologue
    .line 4147
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4148
    return-void
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 8

    .prologue
    const v2, 0x7fffffff

    const/4 v4, 0x0

    .line 4160
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4161
    invoke-interface {v0, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v0

    .line 4162
    if-nez v0, :cond_1e

    .line 4163
    return v4

    .line 4165
    :cond_1e
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_b

    .line 4167
    :cond_24
    if-ne v1, v2, :cond_27

    .line 4168
    return v4

    .line 4170
    :cond_27
    return v1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 4176
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    .line 4177
    return v2

    .line 4180
    :cond_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4181
    invoke-interface {v0, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v0

    .line 4182
    if-nez v0, :cond_c

    .line 4183
    const/4 v0, 0x0

    return v0

    .line 4186
    :cond_20
    return v2
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 4152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .line 4153
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/StorageManagerService;->-wrap11(Lcom/android/server/StorageManagerService;II)V

    .line 4154
    return-void
.end method
