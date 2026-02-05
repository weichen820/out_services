.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 636
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 637
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v2

    .line 642
    :try_start_4
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 643
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_a

    .line 648
    :goto_1a
    if-nez v0, :cond_9a

    .line 650
    :goto_1c
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v0, v1, :cond_8f

    .line 651
    const-string/jumbo v0, "NativeDaemonConnector.ResponseQueue"

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "more buffered than allowed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v3, " >= "

    .line 652
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    iget v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 652
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 656
    const-string/jumbo v1, "NativeDaemonConnector.ResponseQueue"

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 658
    iget v0, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    .line 657
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 658
    const-string/jumbo v3, ")"

    .line 657
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_4 .. :try_end_8b} :catchall_8c

    goto :goto_1c

    .line 641
    :catchall_8c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 660
    :cond_8f
    :try_start_8f
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_9a
    iget v1, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 666
    iget v1, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v1, :cond_a9

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_a9
    .catchall {:try_start_8f .. :try_end_a9} :catchall_8c

    :cond_a9
    monitor-exit v2

    .line 669
    :try_start_aa
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_af} :catch_b0

    .line 671
    :goto_af
    return-void

    .line 670
    :catch_b0
    move-exception v0

    goto :goto_af

    :cond_b2
    move-object v0, v1

    goto/16 :goto_1a
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 704
    const-string/jumbo v0, "Pending requests:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    .line 706
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_f

    .line 705
    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_45
    monitor-exit v1

    .line 710
    return-void
.end method

.method public remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v2

    .line 678
    :try_start_4
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 679
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_a

    .line 684
    :goto_1a
    if-nez v0, :cond_26

    .line 685
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v0, p1, p4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 686
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_26
    iget v3, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 691
    iget v3, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4c

    :cond_35
    monitor-exit v2

    .line 695
    :try_start_36
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_40} :catch_4f

    .line 697
    :goto_40
    if-nez v0, :cond_4b

    .line 698
    const-string/jumbo v1, "NativeDaemonConnector.ResponseQueue"

    const-string/jumbo v2, "Timeout waiting for response"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_4b
    return-object v0

    .line 677
    :catchall_4c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 696
    :catch_4f
    move-exception v0

    move-object v0, v1

    goto :goto_40

    :cond_52
    move-object v0, v1

    goto :goto_1a
.end method
