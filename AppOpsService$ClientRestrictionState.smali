.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2884
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2886
    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2887
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 2888
    return-void
.end method

.method private isDefault([Z)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3021
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3022
    return v4

    .line 3024
    :cond_9
    array-length v2, p1

    move v0, v1

    :goto_b
    if-ge v0, v2, :cond_15

    aget-boolean v3, p1, v0

    .line 3025
    if-eqz v3, :cond_12

    .line 3026
    return v1

    .line 3024
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3029
    :cond_15
    return v4
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 2996
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v4

    .line 2997
    :try_start_4
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0}, Lcom/android/server/AppOpsService;->-get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_46

    if-nez v0, :cond_15

    monitor-exit v4

    .line 2999
    return-void

    .line 3001
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v3, v2

    .line 3002
    :goto_1c
    if-ge v3, v5, :cond_41

    .line 3003
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 3004
    array-length v6, v0

    move v1, v2

    .line 3005
    :goto_28
    if-ge v1, v6, :cond_3d

    .line 3006
    aget-boolean v7, v0, v1

    if-eqz v7, :cond_3a

    .line 3008
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v7, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/-$Lambda$pxHDwRy_8WGgaOZHQ9e3tJlXPqU;

    invoke-direct {v8, v1, p0}, Lcom/android/server/-$Lambda$pxHDwRy_8WGgaOZHQ9e3tJlXPqU;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3005
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3002
    :cond_3d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    .line 3012
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_46

    monitor-exit v4

    .line 3014
    return-void

    .line 2996
    :catchall_46
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3018
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2955
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    .line 2956
    return v1

    .line 2958
    :cond_7
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 2959
    if-nez v0, :cond_12

    .line 2960
    return v1

    .line 2962
    :cond_12
    aget-boolean v0, v0, p1

    if-nez v0, :cond_17

    .line 2963
    return v1

    .line 2965
    :cond_17
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v0, :cond_1c

    .line 2966
    return v2

    .line 2968
    :cond_1c
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2969
    if-nez v0, :cond_27

    .line 2970
    return v2

    .line 2972
    :cond_27
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDefault()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2991
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method synthetic lambda$-com_android_server_AppOpsService$ClientRestrictionState_126516(I)V
    .registers 3

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->-wrap0(Lcom/android/server/AppOpsService;I)V

    return-void
.end method

.method public removeUser(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2976
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_14

    .line 2977
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2978
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    .line 2979
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2982
    :cond_14
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_27

    .line 2983
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2984
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_27

    .line 2985
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 2988
    :cond_27
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .registers 14

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2894
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    if-eqz p2, :cond_10

    .line 2895
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 2899
    :cond_10
    const/4 v0, -0x1

    if-ne p4, v0, :cond_3a

    .line 2900
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 2902
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    .line 2903
    :goto_26
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c0

    .line 2904
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    aput v0, v3, v1

    .line 2903
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 2907
    :cond_3a
    new-array v0, v5, [I

    aput p4, v0, v2

    move-object v1, v0

    .line 2910
    :goto_3f
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_bd

    .line 2911
    array-length v6, v1

    move v3, v2

    .line 2913
    :goto_45
    if-ge v3, v6, :cond_bd

    .line 2914
    aget v7, v1, v3

    .line 2916
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 2917
    if-nez v0, :cond_5e

    if-eqz p2, :cond_5e

    .line 2918
    const/16 v0, 0x4a

    new-array v0, v0, [Z

    .line 2919
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2921
    :cond_5e
    if-eqz v0, :cond_75

    aget-boolean v8, v0, p1

    if-eq v8, p2, :cond_75

    .line 2922
    aput-boolean p2, v0, p1

    .line 2923
    if-nez p2, :cond_74

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2924
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V

    move-object v0, v4

    :cond_74
    move v2, v5

    .line 2930
    :cond_75
    if-eqz v0, :cond_be

    .line 2931
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    .line 2932
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v0, :cond_8a

    xor-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_8a

    .line 2933
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2935
    :cond_8a
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_b5

    .line 2936
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2935
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_be

    .line 2937
    if-eqz v8, :cond_b7

    .line 2938
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 2939
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_af

    .line 2940
    iput-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    :cond_af
    :goto_af
    move v0, v5

    .line 2913
    :goto_b0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_45

    :cond_b5
    move v0, v2

    .line 2936
    goto :goto_b0

    .line 2943
    :cond_b7
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_af

    .line 2951
    :cond_bd
    return v2

    :cond_be
    move v0, v2

    goto :goto_b0

    :cond_c0
    move-object v1, v3

    goto/16 :goto_3f
.end method
