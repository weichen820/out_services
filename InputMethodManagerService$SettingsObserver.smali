.class Lcom/android/server/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 765
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 759
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 766
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 796
    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    .line 795
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 798
    const-string/jumbo v3, "accessibility_soft_keyboard_mode"

    .line 797
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 799
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 800
    :try_start_15
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 801
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_59

    :cond_20
    :goto_20
    monitor-exit v4

    .line 824
    return-void

    .line 802
    :cond_22
    :try_start_22
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 803
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 804
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 805
    const-string/jumbo v5, "accessibility_soft_keyboard_mode"

    .line 806
    iget v6, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    const/4 v7, 0x0

    .line 803
    invoke-static {v3, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_5c

    :goto_3e
    invoke-static {v2, v0}, Lcom/android/server/InputMethodManagerService;->-set0(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 807
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-get0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 808
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 809
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 810
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_59

    goto :goto_20

    .line 799
    :catchall_59
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5c
    move v0, v1

    .line 803
    goto :goto_3e

    .line 811
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v0, :cond_20

    .line 812
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_20

    .line 816
    :cond_6c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v2

    .line 817
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 818
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 821
    :goto_7e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_83
    .catchall {:try_start_5e .. :try_end_83} :catchall_59

    goto :goto_20

    :cond_84
    move v0, v1

    goto :goto_7e
.end method

.method public registerContentObserverLocked(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_a

    .line 770
    return-void

    .line 772
    :cond_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 773
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v1, :cond_23

    .line 774
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 775
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 777
    :cond_23
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2e

    .line 778
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 779
    iput p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 782
    :cond_2e
    const-string/jumbo v1, "default_input_method"

    .line 781
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 784
    const-string/jumbo v1, "enabled_input_methods"

    .line 783
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 786
    const-string/jumbo v1, "selected_input_method_subtype"

    .line 785
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 788
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 787
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 790
    const-string/jumbo v1, "accessibility_soft_keyboard_mode"

    .line 789
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 792
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 829
    const-string/jumbo v1, " mLastEnabled="

    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 829
    const-string/jumbo v1, "}"

    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
