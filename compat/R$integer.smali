.class public final Landroid/support/compat/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static status_bar_notification_info_maxnum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 279
    const/4 v0, 0x0

    sput v0, Landroid/support/compat/R$integer;->status_bar_notification_info_maxnum:I

    .line 272
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
