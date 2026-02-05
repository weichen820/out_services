.class public final Landroid/support/compat/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static TextAppearance_Compat_Notification:I

.field public static TextAppearance_Compat_Notification_Info:I

.field public static TextAppearance_Compat_Notification_Line2:I

.field public static TextAppearance_Compat_Notification_Time:I

.field public static TextAppearance_Compat_Notification_Title:I

.field public static Widget_Compat_NotificationActionContainer:I

.field public static Widget_Compat_NotificationActionText:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 312
    sput v0, Landroid/support/compat/R$style;->TextAppearance_Compat_Notification:I

    .line 313
    sput v0, Landroid/support/compat/R$style;->TextAppearance_Compat_Notification_Info:I

    .line 314
    sput v0, Landroid/support/compat/R$style;->TextAppearance_Compat_Notification_Line2:I

    .line 315
    sput v0, Landroid/support/compat/R$style;->TextAppearance_Compat_Notification_Time:I

    .line 316
    sput v0, Landroid/support/compat/R$style;->TextAppearance_Compat_Notification_Title:I

    .line 317
    sput v0, Landroid/support/compat/R$style;->Widget_Compat_NotificationActionContainer:I

    .line 318
    sput v0, Landroid/support/compat/R$style;->Widget_Compat_NotificationActionText:I

    .line 308
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
