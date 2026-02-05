.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatBaseImpl"
.end annotation


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_1c

    .line 86
    :try_start_6
    const-class v0, Landroid/widget/PopupWindow;

    .line 87
    const-string/jumbo v1, "getWindowLayoutType"

    .line 86
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 88
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_32

    .line 92
    :goto_1a
    sput-boolean v4, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 95
    :cond_1c
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_31

    .line 97
    :try_start_20
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_30

    move-result v0

    return v0

    .line 98
    :catch_30
    move-exception v0

    .line 102
    :cond_31
    return v3

    .line 89
    :catch_32
    move-exception v0

    goto :goto_1a
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3

    .prologue
    .line 56
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 63
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_20

    .line 65
    :try_start_5
    const-class v0, Landroid/widget/PopupWindow;

    .line 66
    const-string/jumbo v1, "setWindowLayoutType"

    .line 65
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 66
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 67
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_36

    .line 71
    :goto_1e
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 74
    :cond_20
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_33

    .line 76
    :try_start_24
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    .line 81
    :cond_33
    :goto_33
    return-void

    .line 77
    :catch_34
    move-exception v0

    goto :goto_33

    .line 68
    :catch_36
    move-exception v0

    goto :goto_1e
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 8

    .prologue
    .line 45
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 44
    invoke-static {p5, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 46
    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 49
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    .line 51
    :cond_17
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 52
    return-void
.end method
