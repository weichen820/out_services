.class public final Landroid/support/v4/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 92
    if-nez p0, :cond_4

    .line 93
    return-object v5

    .line 96
    :cond_4
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    const/4 v0, 0x0

    array-length v2, p1

    :goto_d
    if-ge v0, v2, :cond_22

    aget-object v3, p1, v0

    .line 98
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v1, v4}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 100
    return-object v3

    .line 97
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 104
    :cond_22
    return-object v5
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 113
    if-nez p0, :cond_4

    .line 114
    return-object v5

    .line 117
    :cond_4
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    const/4 v0, 0x0

    array-length v2, p0

    :goto_d
    if-ge v0, v2, :cond_22

    aget-object v3, p0, v0

    .line 119
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4, v1}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 121
    return-object v3

    .line 118
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 125
    :cond_22
    return-object v5
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_4
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p0, :cond_6

    .line 135
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 138
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    array-length v3, p0

    :goto_13
    if-ge v0, v3, :cond_2a

    aget-object v4, p0, v0

    .line 141
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-static {v5, v2}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 143
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 147
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    array-length v0, p1

    if-eq v0, v1, :cond_f

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string/jumbo v1, "Ill-formatted MIME type filter. Must be type/subtype."

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_f
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 53
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string/jumbo v1, "Ill-formatted MIME type filter. Type or subtype empty."

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_28
    array-length v0, p0

    if-eq v0, v1, :cond_2c

    .line 57
    return v2

    .line 59
    :cond_2c
    const-string/jumbo v0, "*"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 60
    aget-object v0, p1, v2

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 59
    if-eqz v0, :cond_44

    .line 61
    return v2

    .line 63
    :cond_44
    const-string/jumbo v0, "*"

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 64
    aget-object v0, p1, v3

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 63
    if-eqz v0, :cond_5c

    .line 65
    return v2

    .line 68
    :cond_5c
    return v3
.end method
