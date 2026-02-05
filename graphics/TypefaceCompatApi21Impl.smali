.class Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.super Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 50
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/proc/self/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2e} :catch_30

    return-object v1

    .line 55
    :cond_2f
    return-object v2

    .line 57
    :catch_30
    move-exception v0

    .line 58
    return-object v2
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 11
    .param p3    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 65
    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 66
    return-object v2

    .line 68
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    :try_start_e
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v0, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_9a
    .catchall {:try_start_e .. :try_end_18} :catchall_96

    move-result-object v4

    .line 72
    :try_start_19
    invoke-direct {p0, v4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_3d
    .catchall {:try_start_19 .. :try_end_22} :catchall_6b

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7a

    .line 76
    :cond_27
    :try_start_27
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_30} :catch_5c
    .catchall {:try_start_27 .. :try_end_30} :catchall_9d

    .line 77
    :try_start_30
    invoke-super {p0, p1, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_a4
    .catchall {:try_start_30 .. :try_end_33} :catchall_a1

    move-result-object v3

    .line 78
    if-eqz v1, :cond_39

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_4e
    .catchall {:try_start_36 .. :try_end_39} :catchall_6b

    :cond_39
    move-object v0, v2

    :goto_3a
    if-eqz v0, :cond_50

    :try_start_3c
    throw v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_6b

    .line 83
    :catch_3d
    move-exception v0

    move-object v1, v4

    :goto_3f
    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v3

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    :goto_44
    if-eqz v4, :cond_49

    :try_start_46
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_8a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4c

    :cond_49
    :goto_49
    if-eqz v1, :cond_95

    :try_start_4b
    throw v1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 81
    :catch_4c
    move-exception v0

    .line 82
    return-object v2

    .line 78
    :catch_4e
    move-exception v0

    goto :goto_3a

    .line 83
    :cond_50
    if-eqz v4, :cond_55

    :try_start_52
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_4c

    :cond_55
    move-object v0, v2

    :goto_56
    if-eqz v0, :cond_5b

    :try_start_58
    throw v0
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_59} :catch_4c

    :catch_59
    move-exception v0

    goto :goto_56

    .line 77
    :cond_5b
    return-object v3

    .line 78
    :catch_5c
    move-exception v0

    move-object v1, v2

    :goto_5e
    :try_start_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    :goto_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_6e
    .catchall {:try_start_65 .. :try_end_68} :catchall_6b

    :cond_68
    :goto_68
    if-eqz v3, :cond_79

    :try_start_6a
    throw v3

    .line 83
    :catchall_6b
    move-exception v0

    move-object v1, v2

    goto :goto_44

    .line 78
    :catch_6e
    move-exception v1

    if-nez v3, :cond_73

    move-object v3, v1

    goto :goto_68

    :cond_73
    if-eq v3, v1, :cond_68

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_68

    :cond_79
    throw v0

    .line 80
    :cond_7a
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_7d} :catch_3d
    .catchall {:try_start_6a .. :try_end_7d} :catchall_6b

    move-result-object v1

    .line 83
    if-eqz v4, :cond_83

    :try_start_80
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_87
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_4c

    :cond_83
    move-object v0, v2

    :goto_84
    if-eqz v0, :cond_89

    :try_start_86
    throw v0

    :catch_87
    move-exception v0

    goto :goto_84

    .line 80
    :cond_89
    return-object v1

    .line 83
    :catch_8a
    move-exception v3

    if-nez v1, :cond_8f

    move-object v1, v3

    goto :goto_49

    :cond_8f
    if-eq v1, v3, :cond_49

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_49

    :cond_95
    throw v0
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_96} :catch_4c

    :catchall_96
    move-exception v0

    move-object v4, v2

    move-object v1, v2

    goto :goto_44

    :catch_9a
    move-exception v0

    move-object v1, v2

    goto :goto_3f

    .line 78
    :catchall_9d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_63

    :catchall_a1
    move-exception v0

    move-object v3, v2

    goto :goto_63

    :catch_a4
    move-exception v0

    goto :goto_5e
.end method
