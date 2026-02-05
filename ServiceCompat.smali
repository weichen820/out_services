.class public final Landroid/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_b

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 101
    :goto_a
    return-void

    .line 99
    :cond_b
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_a
.end method
