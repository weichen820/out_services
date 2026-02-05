.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 30
    if-ne p0, p1, :cond_6

    .line 31
    return v0

    .line 32
    :cond_6
    if-nez p0, :cond_1f

    .line 33
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1d

    .line 34
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 33
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 34
    goto :goto_1a

    :cond_1d
    move v0, v1

    .line 33
    goto :goto_1a

    .line 35
    :cond_1f
    if-nez p1, :cond_35

    .line 36
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_34

    .line 37
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_34

    move v1, v0

    .line 36
    :cond_34
    return v1

    .line 39
    :cond_35
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 39
    if-ne v2, v3, :cond_56

    .line 41
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 41
    if-ne v2, v3, :cond_56

    move v1, v0

    .line 39
    :cond_56
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11

    .prologue
    const v0, 0x7fffffff

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 47
    if-nez p0, :cond_22

    move v3, v6

    .line 48
    :goto_9
    if-nez p1, :cond_2b

    move v7, v6

    .line 49
    :goto_c
    if-nez p0, :cond_34

    move v4, v6

    .line 51
    :goto_f
    if-nez p1, :cond_3d

    move v5, v6

    .line 55
    :goto_12
    if-eq v3, v6, :cond_16

    if-ne v4, v6, :cond_46

    :cond_16
    move v3, v0

    move v4, v2

    .line 63
    :goto_18
    if-eq v7, v6, :cond_1c

    if-ne v5, v6, :cond_4e

    :cond_1c
    move v1, v2

    .line 71
    :goto_1d
    if-gt v4, v1, :cond_55

    if-gt v1, v3, :cond_55

    .line 72
    return v8

    .line 47
    :cond_22
    const-string/jumbo v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    goto :goto_9

    .line 48
    :cond_2b
    const-string/jumbo v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v7, v1

    goto :goto_c

    .line 50
    :cond_34
    const-string/jumbo v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v4, v1

    goto :goto_f

    .line 52
    :cond_3d
    const-string/jumbo v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v5, v1

    goto :goto_12

    .line 59
    :cond_46
    mul-int/2addr v3, v4

    .line 60
    add-int v1, v3, v4

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    move v3, v1

    goto :goto_18

    .line 67
    :cond_4e
    mul-int v1, v5, v7

    .line 68
    add-int v0, v1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 73
    :cond_55
    if-gt v4, v0, :cond_5a

    if-gt v0, v3, :cond_5a

    .line 74
    return v8

    .line 76
    :cond_5a
    return v2
.end method
