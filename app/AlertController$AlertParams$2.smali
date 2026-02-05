.class Landroid/support/v7/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$1:Landroid/support/v7/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertController;

.field final synthetic val$listView:Landroid/support/v7/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->this$1:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p5, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->val$listView:Landroid/support/v7/app/AlertController$RecycleListView;

    iput-object p6, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->val$dialog:Landroid/support/v7/app/AlertController;

    .line 985
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 990
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 991
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->this$1:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 992
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->this$1:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 998
    const v0, 0x1020014

    .line 997
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 999
    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->val$listView:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 1001
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_26

    move v0, v1

    .line 1000
    :goto_22
    invoke-virtual {v2, v3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1002
    return-void

    .line 1001
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->this$1:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->val$dialog:Landroid/support/v7/app/AlertController;

    iget v1, v1, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1007
    const/4 v2, 0x0

    .line 1006
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
