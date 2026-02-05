.class Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1034
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_d

    .line 1082
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1084
    :cond_d
    return-object v1
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1099
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1094
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1037
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 1076
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1046
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 1049
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 1050
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1053
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1054
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 1057
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1058
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1105
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 1106
    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 1120
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 1041
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1042
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1068
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1069
    const/4 p2, 0x2

    .line 1072
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1073
    return-void
.end method
