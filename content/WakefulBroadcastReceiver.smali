.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    .line 74
    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 123
    const-string/jumbo v0, "android.support.content.wakelockid"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 124
    if-nez v1, :cond_c

    .line 125
    return v2

    .line 127
    :cond_c
    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v2

    .line 128
    :try_start_f
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 129
    if-eqz v0, :cond_23

    .line 130
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 131
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_3f

    monitor-exit v2

    .line 132
    return v5

    .line 140
    :cond_23
    :try_start_23
    const-string/jumbo v0, "WakefulBroadcastReceiv."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No active wake lock id #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3f

    monitor-exit v2

    .line 141
    return v5

    .line 127
    :catchall_3f
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 91
    sget-object v1, Landroid/support/v4/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 92
    :try_start_4
    sget v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 93
    sget v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 94
    sget v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v0, :cond_13

    .line 95
    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 98
    :cond_13
    const-string/jumbo v0, "android.support.content.wakelockid"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_58

    move-result-object v3

    .line 100
    if-nez v3, :cond_21

    monitor-exit v1

    .line 101
    return-object v4

    .line 104
    :cond_21
    :try_start_21
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wake:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 107
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 108
    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 109
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_21 .. :try_end_56} :catchall_58

    monitor-exit v1

    .line 110
    return-object v3

    .line 91
    :catchall_58
    move-exception v0

    monitor-exit v1

    throw v0
.end method
