.class public final Lcom/android/server/Watchdog$HandlerChecker;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerChecker"
.end annotation


# instance fields
.field private mCompleted:Z

.field private mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mWaitMax:J

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 136
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 138
    iput-wide p4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 140
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public describeBlockedStateLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-nez v0, :cond_35

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Blocked in handler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Blocked in monitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, " on "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, " ("

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, ")"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompletionStateLocked()I
    .registers 7

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-eqz v0, :cond_6

    .line 175
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    sub-long/2addr v0, v2

    .line 178
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_18

    .line 179
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_18
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 181
    const/4 v0, 0x2

    return v0

    .line 184
    :cond_20
    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public isOverdueLocked()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-nez v1, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    iget-wide v6, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_24

    .line 208
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v3

    .line 209
    :try_start_d
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$Monitor;

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_21

    monitor-exit v3

    .line 211
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v0}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 208
    :catchall_21
    move-exception v0

    monitor-exit v3

    throw v0

    .line 214
    :cond_24
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v1

    .line 215
    const/4 v0, 0x1

    :try_start_28
    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2f

    monitor-exit v1

    .line 218
    return-void

    .line 214
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public scheduleCheckLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 155
    return-void

    .line 158
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-nez v0, :cond_22

    .line 160
    return-void

    .line 163
    :cond_22
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    .line 166
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method
