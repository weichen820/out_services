.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 162
    if-eqz p0, :cond_5

    .line 164
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 168
    :cond_5
    :goto_5
    return-void

    .line 165
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 114
    if-nez v1, :cond_8

    .line 115
    return-object v2

    .line 118
    :cond_8
    :try_start_8
    invoke-static {v1, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1a

    move-result v0

    if-nez v0, :cond_12

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 119
    return-object v2

    .line 121
    :cond_12
    :try_start_12
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result-object v0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 121
    return-object v0

    .line 122
    :catchall_1a
    move-exception v0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    throw v0
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 155
    invoke-static {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result v0

    .line 157
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    return v0

    .line 156
    :catchall_d
    move-exception v0

    .line 157
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    throw v0
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 131
    const/4 v2, 0x0

    .line 133
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_48
    .catchall {:try_start_2 .. :try_end_8} :catchall_40

    .line 134
    const/16 v0, 0x400

    :try_start_a
    new-array v0, v0, [B

    .line 136
    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    .line 137
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_46

    goto :goto_c

    .line 140
    :catch_18
    move-exception v0

    .line 141
    :goto_19
    :try_start_19
    const-string/jumbo v2, "TypefaceCompatUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_46

    .line 144
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    return v5

    .line 139
    :cond_3b
    const/4 v0, 0x1

    .line 144
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    return v0

    .line 143
    :catchall_40
    move-exception v0

    move-object v1, v2

    .line 144
    :goto_42
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    throw v0

    :catchall_46
    move-exception v0

    goto :goto_42

    .line 140
    :catch_48
    move-exception v0

    move-object v1, v2

    goto :goto_19
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    const/4 v0, 0x0

    :goto_2f
    const/16 v2, 0x64

    if-ge v0, v2, :cond_58

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_54

    move-result v3

    if-eqz v3, :cond_55

    .line 66
    return-object v2

    .line 68
    :catch_54
    move-exception v2

    .line 62
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 72
    :cond_58
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    :try_start_5
    const-string/jumbo v1, "r"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_b} :catch_43
    .catchall {:try_start_5 .. :try_end_b} :catchall_70

    move-result-object v8

    .line 98
    :try_start_c
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_7c
    .catchall {:try_start_c .. :try_end_15} :catchall_75

    .line 99
    :try_start_15
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 101
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_24} :catch_80
    .catchall {:try_start_15 .. :try_end_24} :catchall_79

    move-result-object v2

    .line 104
    if-eqz v6, :cond_2a

    :try_start_27
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_36
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_34

    :cond_2a
    move-object v1, v7

    :goto_2b
    if-eqz v8, :cond_30

    :try_start_2d
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_34

    :cond_30
    move-object v0, v1

    :cond_31
    :goto_31
    if-eqz v0, :cond_42

    :try_start_33
    throw v0

    .line 102
    :catch_34
    move-exception v0

    .line 103
    return-object v7

    .line 104
    :catch_36
    move-exception v1

    goto :goto_2b

    :catch_38
    move-exception v0

    if-eqz v1, :cond_31

    if-eq v1, v0, :cond_30

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_40} :catch_34

    move-object v0, v1

    goto :goto_31

    .line 101
    :cond_42
    return-object v2

    .line 104
    :catch_43
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_46
    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v3

    move-object v6, v1

    move-object v8, v2

    move-object v1, v0

    move-object v0, v3

    :goto_4c
    if-eqz v6, :cond_51

    :try_start_4e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_34

    :cond_51
    move-object v2, v1

    :cond_52
    :goto_52
    if-eqz v8, :cond_57

    :try_start_54
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_65
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_34

    :cond_57
    move-object v1, v2

    :cond_58
    :goto_58
    if-eqz v1, :cond_6f

    :try_start_5a
    throw v1

    :catch_5b
    move-exception v2

    if-eqz v1, :cond_52

    if-eq v1, v2, :cond_51

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_52

    :catch_65
    move-exception v1

    if-eqz v2, :cond_58

    if-eq v2, v1, :cond_57

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_58

    :cond_6f
    throw v0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_70} :catch_34

    :catchall_70
    move-exception v0

    move-object v6, v7

    move-object v8, v7

    move-object v1, v7

    goto :goto_4c

    :catchall_75
    move-exception v0

    move-object v6, v7

    move-object v1, v7

    goto :goto_4c

    :catchall_79
    move-exception v0

    move-object v1, v7

    goto :goto_4c

    :catch_7c
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_46

    :catch_80
    move-exception v0

    move-object v1, v6

    move-object v2, v8

    goto :goto_46
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 81
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_24
    .catchall {:try_start_1 .. :try_end_6} :catchall_3f

    .line 82
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 84
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_46
    .catchall {:try_start_6 .. :try_end_15} :catchall_43

    move-result-object v1

    .line 87
    if-eqz v6, :cond_1b

    :try_start_18
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1f

    :cond_1b
    move-object v0, v7

    :goto_1c
    if-eqz v0, :cond_23

    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 85
    :catch_1f
    move-exception v0

    .line 86
    return-object v7

    .line 87
    :catch_21
    move-exception v0

    goto :goto_1c

    .line 84
    :cond_23
    return-object v1

    .line 87
    :catch_24
    move-exception v0

    move-object v1, v7

    :goto_26
    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    :goto_2b
    if-eqz v6, :cond_30

    :try_start_2d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_1f

    :cond_30
    :goto_30
    if-eqz v1, :cond_3e

    :try_start_32
    throw v1

    :catch_33
    move-exception v2

    if-nez v1, :cond_38

    move-object v1, v2

    goto :goto_30

    :cond_38
    if-eq v1, v2, :cond_30

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_3e
    throw v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_1f

    :catchall_3f
    move-exception v0

    move-object v6, v7

    move-object v1, v7

    goto :goto_2b

    :catchall_43
    move-exception v0

    move-object v1, v7

    goto :goto_2b

    :catch_46
    move-exception v0

    move-object v1, v6

    goto :goto_26
.end method
