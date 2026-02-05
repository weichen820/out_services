.class public final Landroid/support/mediacompat/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static notification_material_background_media_default_color:I

.field public static primary_text_default_material_dark:I

.field public static secondary_text_default_material_dark:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput v0, Landroid/support/mediacompat/R$color;->notification_material_background_media_default_color:I

    .line 26
    sput v0, Landroid/support/mediacompat/R$color;->primary_text_default_material_dark:I

    .line 30
    sput v0, Landroid/support/mediacompat/R$color;->secondary_text_default_material_dark:I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
