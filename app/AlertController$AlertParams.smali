.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 850
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    .line 873
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 877
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 885
    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 901
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 902
    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    .line 903
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 904
    return-void
.end method

.method private createListView(Landroid/support/v7/app/AlertController;)V
    .registers 12

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Landroid/support/v7/app/AlertController;->mListLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/AlertController$RecycleListView;

    .line 968
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_5f

    .line 969
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_52

    .line 970
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$1;

    .line 971
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    .line 970
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    .line 1030
    :goto_24
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_2d

    .line 1031
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1037
    :cond_2d
    iput-object v0, p1, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1038
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v0, p1, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 1040
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_93

    .line 1041
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1064
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_48

    .line 1065
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1068
    :cond_48
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_a0

    .line 1069
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1073
    :cond_4f
    :goto_4f
    iput-object v6, p1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1074
    return-void

    .line 985
    :cond_52
    new-instance v1, Landroid/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    move-object v0, v1

    goto :goto_24

    .line 1014
    :cond_5f
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_7f

    .line 1015
    iget v2, p1, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1020
    :goto_65
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_82

    .line 1021
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 1022
    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    .line 1021
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_24

    .line 1017
    :cond_7f
    iget v2, p1, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    goto :goto_65

    .line 1023
    :cond_82
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_89

    .line 1024
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_24

    .line 1026
    :cond_89
    new-instance v0, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1050
    :cond_93
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_3f

    .line 1051
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v0, p0, v6, p1}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3f

    .line 1070
    :cond_a0
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_4f

    .line 1071
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_4f
.end method


# virtual methods
.method public apply(Landroid/support/v7/app/AlertController;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 907
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_59

    .line 908
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 923
    :cond_a
    :goto_a
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 924
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 926
    :cond_13
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 927
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 928
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 927
    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 930
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    .line 931
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 932
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 931
    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 934
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_37

    .line 935
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 936
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 935
    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 940
    :cond_37
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_82

    .line 941
    :cond_3f
    :goto_3f
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V

    .line 943
    :cond_42
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8d

    .line 944
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_87

    .line 945
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 946
    iget v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    .line 945
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 961
    :cond_58
    :goto_58
    return-void

    .line 910
    :cond_59
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_62

    .line 911
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 913
    :cond_62
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6b

    .line 914
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :cond_6b
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_74

    .line 917
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 919
    :cond_74
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_a

    .line 920
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    goto :goto_a

    .line 940
    :cond_82
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_42

    goto :goto_3f

    .line 948
    :cond_87
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_58

    .line 950
    :cond_8d
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_58

    .line 951
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setView(I)V

    goto :goto_58
.end method
