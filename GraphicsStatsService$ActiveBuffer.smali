.class final Lcom/android/server/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final mCallback:Landroid/view/IGraphicsStatsCallback;

.field final mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

.field final mPid:I

.field mProcessBuffer:Landroid/os/MemoryFile;

.field final mToken:Landroid/os/IBinder;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 411
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p5

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/GraphicsStatsService$BufferInfo;-><init>(Lcom/android/server/GraphicsStatsService;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    .line 414
    iput p3, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    .line 415
    iput p4, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 416
    iput-object p2, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    .line 417
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v0}, Landroid/view/IGraphicsStatsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    .line 418
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 419
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GFXStats-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->-get0(Lcom/android/server/GraphicsStatsService;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 420
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->-get1(Lcom/android/server/GraphicsStatsService;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->-get0(Lcom/android/server/GraphicsStatsService;)I

    move-result v2

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 421
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 426
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0, p0}, Lcom/android/server/GraphicsStatsService;->-wrap1(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 427
    return-void
.end method

.method closeAllBuffers()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    if-eqz v0, :cond_c

    .line 431
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 432
    iput-object v1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 434
    :cond_c
    return-void
.end method
