.class Lcom/android/server/InputMethodManagerService$5;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$5;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    .line 3787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3791
    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    array-length v0, v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_5d

    if-gt v0, p2, :cond_18

    :cond_16
    monitor-exit v1

    .line 3793
    return-void

    .line 3791
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3792
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v0

    array-length v0, v0

    if-le v0, p2, :cond_16

    .line 3795
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    aget-object v2, v0, p2

    .line 3796
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v0

    aget v0, v0, p2

    .line 3797
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$5;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v3, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 3798
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$5;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 3799
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 3800
    if-eqz v2, :cond_5b

    .line 3801
    if-ltz v0, :cond_51

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v0, v3, :cond_52

    .line 3802
    :cond_51
    const/4 v0, -0x1

    .line 3804
    :cond_52
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$5;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_5b
    .catchall {:try_start_18 .. :try_end_5b} :catchall_5d

    :cond_5b
    monitor-exit v1

    .line 3807
    return-void

    .line 3790
    :catchall_5d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
