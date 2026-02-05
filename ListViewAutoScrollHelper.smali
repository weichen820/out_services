.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 33
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 49
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 50
    if-nez v1, :cond_a

    .line 51
    return v5

    .line 54
    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 55
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    .line 56
    add-int v4, v3, v2

    .line 58
    if-lez p1, :cond_29

    .line 60
    if-lt v4, v1, :cond_39

    .line 61
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt v1, v0, :cond_39

    .line 63
    return v5

    .line 66
    :cond_29
    if-gez p1, :cond_38

    .line 68
    if-gtz v3, :cond_39

    .line 69
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_39

    .line 71
    return v5

    .line 77
    :cond_38
    return v5

    .line 80
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method public scrollTargetBy(II)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-static {v0, p2}, Landroid/support/v4/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    .line 38
    return-void
.end method
