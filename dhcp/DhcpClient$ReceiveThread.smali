.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 357
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    .line 355
    return-void
.end method


# virtual methods
.method public halt()V
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    .line 362
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;)V

    .line 363
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 367
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Receive thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_a
    :goto_a
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v0, :cond_ab

    .line 371
    :try_start_e
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get14(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 373
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received packet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const v2, 0x30066

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_47} :catch_48
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_47} :catch_48
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_e .. :try_end_47} :catch_5e

    goto :goto_a

    .line 376
    :catch_48
    move-exception v0

    .line 377
    iget-boolean v1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v1, :cond_a

    .line 378
    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Read error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;I)V

    goto :goto_a

    .line 381
    :catch_5e
    move-exception v0

    .line 382
    const-string/jumbo v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t parse packet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v1, v0, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    if-ne v1, v2, :cond_a2

    .line 387
    const v1, 0x534e4554

    .line 388
    const-string/jumbo v2, "31850211"

    .line 389
    const/4 v3, -0x1

    .line 390
    const-class v4, Landroid/net/dhcp/DhcpPacket$ParseException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 391
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 393
    :cond_a2
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v0, v0, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    invoke-static {v1, v0}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;I)V

    goto/16 :goto_a

    .line 396
    :cond_ab
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Receive thread stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method
