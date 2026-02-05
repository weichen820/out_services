.class public Lcom/android/server/PermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/server/PermissionDialog;

.field private final mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/PermissionDialog;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .registers 4

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 87
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->set(I)V

    .line 89
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_1

    .line 85
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    monitor-exit p0

    .line 92
    return-void
.end method

.method public register(Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 82
    return-void

    .line 79
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDialog(Lcom/android/server/PermissionDialog;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 42
    return-void
.end method
