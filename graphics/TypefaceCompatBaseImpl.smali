.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = "cached_font_"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 5

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    new-instance v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;

    invoke-direct {v1, p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;-><init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v0, p2, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    return-object v0
.end method

.method private static findBestFont([Ljava/lang/Object;ILandroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_36

    const/16 v0, 0x190

    move v8, v0

    .line 54
    :goto_a
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3a

    move v0, v1

    .line 57
    :goto_f
    const v3, 0x7fffffff

    .line 59
    array-length v9, p0

    move v7, v2

    :goto_14
    if-ge v7, v9, :cond_40

    aget-object v6, p0, v7

    .line 60
    invoke-interface {p2, v6}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;->getWeight(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v10, v4, 0x2

    .line 61
    invoke-interface {p2, v6}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;->isItalic(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v0, :cond_3c

    move v4, v2

    .line 60
    :goto_2a
    add-int/2addr v4, v10

    .line 63
    if-eqz v5, :cond_2f

    if-le v3, v4, :cond_3e

    :cond_2f
    move v3, v4

    move-object v4, v6

    .line 59
    :goto_31
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v5, v4

    goto :goto_14

    .line 53
    :cond_36
    const/16 v0, 0x2bc

    move v8, v0

    goto :goto_a

    :cond_3a
    move v0, v2

    .line 54
    goto :goto_f

    :cond_3c
    move v4, v1

    .line 61
    goto :goto_2a

    :cond_3e
    move-object v4, v5

    .line 63
    goto :goto_31

    .line 68
    :cond_40
    return-object v5
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p2, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    .line 144
    if-nez v0, :cond_8

    .line 145
    return-object v1

    .line 148
    :cond_8
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p1, p3, v1, v0, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 9
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 110
    array-length v0, p3

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 111
    return-object v1

    .line 113
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 116
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_1e
    .catchall {:try_start_a .. :try_end_15} :catchall_24

    move-result-object v0

    .line 117
    :try_start_16
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2e
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    move-result-object v1

    .line 121
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    return-object v1

    .line 118
    :catch_1e
    move-exception v0

    move-object v0, v1

    .line 121
    :goto_20
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    return-object v1

    .line 120
    :catchall_24
    move-exception v0

    .line 121
    :goto_25
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    throw v0

    :catchall_29
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_25

    .line 118
    :catch_2e
    move-exception v2

    goto :goto_20
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 88
    if-nez v1, :cond_8

    .line 89
    return-object v2

    .line 92
    :cond_8
    :try_start_8
    invoke-static {v1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_1e
    .catchall {:try_start_8 .. :try_end_b} :catchall_23

    move-result v0

    if-nez v0, :cond_12

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    return-object v2

    .line 95
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1e
    .catchall {:try_start_12 .. :try_end_19} :catchall_23

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 95
    return-object v0

    .line 96
    :catch_1e
    move-exception v0

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 100
    return-object v2

    .line 101
    :catchall_23
    move-exception v0

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    throw v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 159
    if-nez v1, :cond_8

    .line 160
    return-object v2

    .line 163
    :cond_8
    :try_start_8
    invoke-static {v1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_1e
    .catchall {:try_start_8 .. :try_end_b} :catchall_23

    move-result v0

    if-nez v0, :cond_12

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 164
    return-object v2

    .line 166
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1e
    .catchall {:try_start_12 .. :try_end_19} :catchall_23

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 166
    return-object v0

    .line 167
    :catch_1e
    move-exception v0

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 171
    return-object v2

    .line 172
    :catchall_23
    move-exception v0

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 172
    throw v0
.end method

.method protected findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {p1, p2, v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method
