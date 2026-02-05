.class public final Landroid/support/mediacompat/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static TextAppearance_Compat_Notification_Info_Media:I

.field public static TextAppearance_Compat_Notification_Line2_Media:I

.field public static TextAppearance_Compat_Notification_Media:I

.field public static TextAppearance_Compat_Notification_Time_Media:I

.field public static TextAppearance_Compat_Notification_Title_Media:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput v0, Landroid/support/mediacompat/R$style;->TextAppearance_Compat_Notification_Info_Media:I

    .line 80
    sput v0, Landroid/support/mediacompat/R$style;->TextAppearance_Compat_Notification_Line2_Media:I

    .line 84
    sput v0, Landroid/support/mediacompat/R$style;->TextAppearance_Compat_Notification_Media:I

    .line 85
    sput v0, Landroid/support/mediacompat/R$style;->TextAppearance_Compat_Notification_Time_Media:I

    .line 86
    sput v0, Landroid/support/mediacompat/R$style;->TextAppearance_Compat_Notification_Title_Media:I

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
