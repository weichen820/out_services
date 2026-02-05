.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 3

    .prologue
    .line 70
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 71
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v0

    return v0

    .line 73
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 63
    sget v0, Landroid/support/compat/R$id;->tag_transition_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 64
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 65
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    :cond_17
    move v0, v1

    .line 64
    :goto_18
    return v0

    .line 66
    :cond_19
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_18

    :cond_21
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    .prologue
    .line 56
    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 5

    .prologue
    .line 59
    sget v0, Landroid/support/compat/R$id;->tag_transition_group:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 60
    return-void
.end method
