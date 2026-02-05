.class public abstract Landroid/support/v4/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;,
        Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 32
    sput-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .registers 4

    .prologue
    .line 56
    sget-object v1, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 57
    :try_start_3
    sget-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .line 58
    if-nez v0, :cond_1d

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1f

    .line 60
    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;-><init>(Landroid/content/Context;)V

    .line 64
    :goto_18
    sget-object v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    :cond_1d
    monitor-exit v1

    .line 66
    return-object v0

    .line 62
    :cond_1f
    :try_start_1f
    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_18

    .line 56
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract getDisplay(I)Landroid/view/Display;
.end method

.method public abstract getDisplays()[Landroid/view/Display;
.end method

.method public abstract getDisplays(Ljava/lang/String;)[Landroid/view/Display;
.end method
