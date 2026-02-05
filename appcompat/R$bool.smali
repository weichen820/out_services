.class public final Landroid/support/v7/appcompat/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I

.field public static abc_allow_stacked_button_bar:I

.field public static abc_config_actionMenuItemAllCaps:I

.field public static abc_config_closeDialogWhenTouchOutside:I

.field public static abc_config_showMenuShortcutsWhenKeyboardPresent:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 2248
    sput v0, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    .line 2255
    sput v0, Landroid/support/v7/appcompat/R$bool;->abc_allow_stacked_button_bar:I

    .line 2261
    sput v0, Landroid/support/v7/appcompat/R$bool;->abc_config_actionMenuItemAllCaps:I

    .line 2262
    sput v0, Landroid/support/v7/appcompat/R$bool;->abc_config_closeDialogWhenTouchOutside:I

    .line 2263
    sput v0, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 2247
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
