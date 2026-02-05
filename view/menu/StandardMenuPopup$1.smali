.class Landroid/support/v7/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isModal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    .line 64
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 65
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    .line 66
    :cond_22
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 72
    :cond_27
    :goto_27
    return-void

    .line 69
    :cond_28
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    goto :goto_27
.end method
