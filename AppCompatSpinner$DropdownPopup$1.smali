.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 732
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 733
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    .line 734
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 733
    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 736
    :cond_20
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 737
    return-void
.end method
