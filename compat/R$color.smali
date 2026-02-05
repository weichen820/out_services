.class public final Landroid/support/compat/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static notification_action_color_filter:I

.field public static notification_icon_bg_color:I

.field public static ripple_material_light:I

.field public static secondary_text_default_material_light:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 129
    sput v0, Landroid/support/compat/R$color;->notification_action_color_filter:I

    .line 130
    sput v0, Landroid/support/compat/R$color;->notification_icon_bg_color:I

    .line 134
    sput v0, Landroid/support/compat/R$color;->ripple_material_light:I

    .line 138
    sput v0, Landroid/support/compat/R$color;->secondary_text_default_material_light:I

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
