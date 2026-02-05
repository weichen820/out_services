.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getFrpCredentialHandle()[B
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 640
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 641
    return-object v8

    .line 646
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/DataInputStream;

    .line 647
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 646
    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1f} :catch_44

    .line 654
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_5d
    .catchall {:try_start_1f .. :try_end_26} :catchall_6c

    .line 655
    :try_start_26
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/io/FilterInputStream;->skip(J)J

    .line 656
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_5a

    move-result v0

    .line 657
    if-lez v0, :cond_3f

    const/16 v3, 0x3e4

    if-le v0, v3, :cond_50

    :cond_3f
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_40} :catch_5d
    .catchall {:try_start_3f .. :try_end_40} :catchall_6c

    .line 668
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 658
    return-object v8

    .line 648
    :catch_44
    move-exception v0

    .line 649
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "partition not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-object v8

    .line 660
    :cond_50
    :try_start_50
    new-array v0, v0, [B

    .line 661
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5a

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_56} :catch_5d
    .catchall {:try_start_55 .. :try_end_56} :catchall_6c

    .line 668
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 662
    return-object v0

    .line 654
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v2

    throw v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5d} :catch_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_6c

    .line 664
    :catch_5d
    move-exception v0

    .line 665
    :try_start_5e
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_6c

    .line 668
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 666
    return-object v8

    .line 667
    :catchall_6c
    move-exception v0

    .line 668
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    throw v0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_52

    :cond_7
    move v0, v1

    .line 595
    :goto_8
    const-string/jumbo v3, "handle must be null or non-empty"

    .line 594
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 596
    if-eqz p1, :cond_15

    .line 597
    array-length v0, p1

    const/16 v3, 0x3e4

    if-gt v0, v3, :cond_54

    .line 598
    :cond_15
    :goto_15
    const-string/jumbo v0, "handle must not be longer than 996"

    .line 596
    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 602
    :try_start_1b
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_2b} :catch_56

    .line 608
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 609
    if-nez p1, :cond_62

    :goto_33
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 610
    if-eqz p1, :cond_3b

    .line 611
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 613
    :cond_3b
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 615
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 616
    :try_start_45
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 617
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_9c

    monitor-exit v2

    .line 618
    return-void

    :cond_52
    move v0, v2

    .line 594
    goto :goto_8

    :cond_54
    move v1, v2

    .line 597
    goto :goto_15

    .line 603
    :catch_56
    move-exception v0

    .line 604
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    return-void

    .line 609
    :cond_62
    array-length v2, p1

    goto :goto_33

    .line 622
    :cond_64
    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 624
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 625
    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 626
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7d} :catch_87
    .catchall {:try_start_64 .. :try_end_7d} :catchall_97

    .line 631
    :try_start_7d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_9c

    monitor-exit v2

    .line 636
    return-void

    .line 627
    :catch_87
    move-exception v0

    .line 628
    :try_start_88
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_97

    .line 631
    :try_start_92
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9c

    monitor-exit v2

    .line 629
    return-void

    .line 630
    :catchall_97
    move-exception v0

    .line 631
    :try_start_98
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 630
    throw v0
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9c

    .line 615
    :catchall_9c
    move-exception v0

    monitor-exit v2

    throw v0
.end method
