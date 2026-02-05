.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 4

    .prologue
    .line 93
    if-nez p0, :cond_3

    .line 94
    return-void

    .line 96
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 100
    :goto_6
    return-void

    .line 97
    :catch_7
    move-exception v0

    .line 98
    const-string/jumbo v1, "RandomBlock"

    const-string/jumbo v2, "IOException thrown while closing Closeable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 45
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    .line 46
    :try_start_6
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_14

    move-result-object v0

    .line 48
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 46
    return-object v0

    .line 47
    :catchall_e
    move-exception v0

    move-object v1, v2

    .line 48
    :goto_10
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 47
    throw v0

    :catchall_14
    move-exception v0

    goto :goto_10
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Lcom/android/server/RandomBlock;

    invoke-direct {v1}, Lcom/android/server/RandomBlock;-><init>()V

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_6
    const/16 v2, 0x200

    if-ge v0, v2, :cond_1d

    .line 56
    iget-object v2, v1, Lcom/android/server/RandomBlock;->block:[B

    rsub-int v3, v0, 0x200

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 57
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 58
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 60
    :cond_1b
    add-int/2addr v0, v2

    goto :goto_6

    .line 62
    :cond_1d
    return-object v1
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .registers 3

    .prologue
    .line 79
    const-wide/16 v0, 0x200

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 85
    :goto_5
    return-void

    .line 80
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_15

    const-string/jumbo v0, "rws"

    :goto_8
    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    .line 70
    :try_start_b
    invoke-direct {p0, v2}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    .line 71
    invoke-static {v2}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1e

    .line 73
    invoke-static {v2}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 75
    return-void

    .line 69
    :cond_15
    :try_start_15
    const-string/jumbo v0, "rw"
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_8

    .line 72
    :catchall_19
    move-exception v0

    .line 73
    :goto_1a
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 72
    throw v0

    :catchall_1e
    move-exception v0

    move-object v1, v2

    goto :goto_1a
.end method
