.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$ClearAppDataTask;,
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mWipeEsims:Z

.field private mWipeExternalStorage:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/MasterClearReceiver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/MasterClearReceiver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createLoadingDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    const v1, 0x10900d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 216
    const v1, 0x1020233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 217
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x10304c7

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 220
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 60
    const-string/jumbo v0, "google.com"

    const-string/jumbo v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 61
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, "Ignoring master clear request -- not from trusted server."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 65
    :cond_29
    const-string/jumbo v0, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 66
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3f
    const-string/jumbo v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 70
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_51
    invoke-static {p1}, Lcom/android/server/MasterClearReceiver;->createLoadingDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 81
    const-string/jumbo v0, "shutdown"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 82
    const-string/jumbo v0, "android.intent.extra.REASON"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    const-string/jumbo v0, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 84
    const-string/jumbo v0, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 85
    const-string/jumbo v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_98

    .line 86
    const-string/jumbo v0, "android.intent.extra.FORCE_FACTORY_RESET"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 88
    :cond_98
    const-string/jumbo v0, "clearAppDataOnly"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 90
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, "!!! FACTORY RESET !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string/jumbo v2, "Reboot"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 107
    if-eqz v7, :cond_c8

    .line 108
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, "clearAppDataOnly"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    :goto_c7
    return-void

    .line 111
    :cond_c8
    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-nez v1, :cond_d0

    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-eqz v1, :cond_db

    .line 113
    :cond_d0
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v0, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c7

    .line 115
    :cond_db
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c7
.end method
