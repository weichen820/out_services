.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3835
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3837
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 3838
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 3839
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 3840
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3841
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3845
    if-eqz p2, :cond_f

    .line 3847
    :goto_4
    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_18

    :cond_e
    return-object p2

    .line 3846
    :cond_f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_4

    .line 3848
    :cond_18
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3849
    iget-object v3, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 3850
    iget-object v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 3851
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3852
    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3853
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3854
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3855
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3862
    :goto_44
    const v0, 0x102039f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 3863
    iget v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v1, :cond_60

    const/4 v1, 0x1

    :goto_52
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3864
    return-object p2

    .line 3857
    :cond_56
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3858
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3859
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44

    :cond_60
    move v1, v2

    .line 3863
    goto :goto_52
.end method
