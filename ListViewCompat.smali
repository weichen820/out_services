.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .registers 7
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_d

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    return v0

    .line 71
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 72
    if-nez v2, :cond_14

    .line 73
    return v1

    .line 76
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    .line 77
    if-lez p1, :cond_39

    .line 78
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 79
    add-int/2addr v2, v3

    .line 80
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_36

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v4, v2, :cond_37

    .line 80
    :cond_36
    :goto_36
    return v0

    :cond_37
    move v0, v1

    .line 81
    goto :goto_36

    .line 83
    :cond_39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 84
    if-gtz v3, :cond_49

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_4a

    :cond_49
    :goto_49
    return v0

    :cond_4a
    move v0, v1

    goto :goto_49
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .registers 4
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 54
    :goto_9
    return-void

    .line 41
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 42
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 43
    return-void

    .line 46
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47
    if-nez v1, :cond_1a

    .line 48
    return-void

    .line 51
    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p1

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto :goto_9
.end method
