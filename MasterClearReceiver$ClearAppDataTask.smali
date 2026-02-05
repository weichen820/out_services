.class Lcom/android/server/MasterClearReceiver$ClearAppDataTask;
.super Landroid/os/AsyncTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAppDataTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/MasterClearReceiver$ClearAppDataTask;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;

    invoke-direct {v0, p0}, Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;-><init>(Lcom/android/server/MasterClearReceiver$ClearAppDataTask;)V

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

    .line 163
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 171
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 172
    const-string/jumbo v3, "com.xtc.i3launcher"

    aput-object v3, v2, v0

    .line 173
    const-string/jumbo v3, "com.xtc.setting"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 176
    array-length v3, v2

    :goto_16
    if-ge v0, v3, :cond_55

    aget-object v4, v2, v0

    .line 177
    const-string/jumbo v5, "MasterClear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 179
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mLock:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_47
    .catchall {:try_start_3c .. :try_end_43} :catchall_52

    :goto_43
    monitor-exit v4

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 182
    :catch_47
    move-exception v5

    .line 183
    :try_start_48
    const-string/jumbo v5, "MasterClear"

    const-string/jumbo v6, "clearApplicationUserData timeout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_52

    goto :goto_43

    .line 179
    :catchall_52
    move-exception v0

    monitor-exit v4

    throw v0

    .line 188
    :cond_55
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 191
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    .prologue
    .line 193
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 196
    const-string/jumbo v1, "ClearAppData"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 197
    return-void
.end method
