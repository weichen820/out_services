.class public final Landroid/support/v7/appcompat/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static abc_config_activityDefaultDur:I

.field public static abc_config_activityShortDur:I

.field public static cancel_button_image_alpha:I

.field public static config_tooltipAnimTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 2817
    sput v0, Landroid/support/v7/appcompat/R$integer;->abc_config_activityDefaultDur:I

    .line 2821
    sput v0, Landroid/support/v7/appcompat/R$integer;->abc_config_activityShortDur:I

    .line 2822
    sput v0, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    .line 2826
    sput v0, Landroid/support/v7/appcompat/R$integer;->config_tooltipAnimTime:I

    .line 2816
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
