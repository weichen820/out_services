.class Landroid/support/v4/media/AudioAttributesCompatApi21;
.super Ljava/lang/Object;
.source "AudioAttributesCompatApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat"

.field private static sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)I
    .registers 7

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 38
    :try_start_4
    sget-object v1, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1b

    .line 39
    const-class v1, Landroid/media/AudioAttributes;

    .line 40
    const-string/jumbo v2, "toLegacyStreamType"

    .line 39
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 40
    const-class v4, Landroid/media/AudioAttributes;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    .line 42
    :cond_1b
    sget-object v1, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_2d} :catch_2f

    move-result v0

    return v0

    .line 46
    :catch_2f
    move-exception v0

    .line 47
    const-string/jumbo v1, "AudioAttributesCompat"

    const-string/jumbo v2, "getLegacyStreamType() failed on API21+"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 v0, -0x1

    return v0
.end method
