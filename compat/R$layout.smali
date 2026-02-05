.class public final Landroid/support/compat/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static notification_action:I

.field public static notification_action_tombstone:I

.field public static notification_template_custom_big:I

.field public static notification_template_icon_group:I

.field public static notification_template_part_chronometer:I

.field public static notification_template_part_time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 285
    sput v0, Landroid/support/compat/R$layout;->notification_action:I

    .line 286
    sput v0, Landroid/support/compat/R$layout;->notification_action_tombstone:I

    .line 287
    sput v0, Landroid/support/compat/R$layout;->notification_template_custom_big:I

    .line 288
    sput v0, Landroid/support/compat/R$layout;->notification_template_icon_group:I

    .line 289
    sput v0, Landroid/support/compat/R$layout;->notification_template_part_chronometer:I

    .line 290
    sput v0, Landroid/support/compat/R$layout;->notification_template_part_time:I

    .line 284
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
