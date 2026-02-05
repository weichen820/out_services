.class public Lcom/android/server/ThreadPriorityBooster;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThreadPriorityBooster$1;,
        Lcom/android/server/ThreadPriorityBooster$PriorityState;
    }
.end annotation


# instance fields
.field private volatile mBoostToPriority:I

.field private final mLockGuardIndex:I

.field private final mThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/server/ThreadPriorityBooster$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/server/ThreadPriorityBooster$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThreadPriorityBooster$1;-><init>(Lcom/android/server/ThreadPriorityBooster;)V

    iput-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 38
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 39
    iput p2, p0, Lcom/android/server/ThreadPriorityBooster;->mLockGuardIndex:I

    .line 40
    return-void
.end method


# virtual methods
.method public boost()V
    .registers 5

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 44
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 45
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 46
    iget v3, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v3, :cond_1f

    .line 47
    iput v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 48
    iget v3, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    if-le v2, v3, :cond_1f

    .line 49
    iget v2, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 52
    :cond_1f
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 56
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 60
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 61
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 62
    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v2, :cond_27

    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    if-eq v2, v1, :cond_27

    .line 63
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget v0, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 65
    :cond_27
    return-void
.end method

.method protected setBoostToPriority(I)V
    .registers 5

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 76
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 77
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 78
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 79
    iget v0, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-eqz v0, :cond_1b

    if-eq v2, p1, :cond_1b

    .line 80
    invoke-static {v1, p1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 82
    :cond_1b
    return-void
.end method
