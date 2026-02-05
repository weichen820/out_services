.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1936
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1993
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1994
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1995
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1996
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v0, 0x1

    .line 1997
    :cond_16
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 1998
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 1999
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 2000
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2001
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2002
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .prologue
    .line 1974
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1975
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1976
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1977
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1978
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    .line 1979
    if-lez v0, :cond_34

    .line 1980
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1981
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_29

    .line 1982
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1984
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_34

    .line 1985
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1989
    :cond_34
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1939
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1940
    return v3

    .line 1942
    :cond_9
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1943
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1944
    return v2

    .line 1946
    :cond_12
    sparse-switch p2, :sswitch_data_60

    .line 1969
    return v2

    .line 1948
    :sswitch_16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1949
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1948
    sub-int/2addr v0, v1

    .line 1950
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    .line 1951
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    .line 1950
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1952
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eq v0, v1, :cond_3b

    .line 1953
    invoke-virtual {p1, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 1954
    return v3

    .line 1957
    :cond_3b
    return v2

    .line 1959
    :sswitch_3c
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1960
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1959
    sub-int/2addr v0, v1

    .line 1961
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1962
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eq v0, v1, :cond_5e

    .line 1963
    invoke-virtual {p1, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 1964
    return v3

    .line 1967
    :cond_5e
    return v2

    .line 1946
    nop

    :sswitch_data_60
    .sparse-switch
        0x1000 -> :sswitch_16
        0x2000 -> :sswitch_3c
    .end sparse-switch
.end method
