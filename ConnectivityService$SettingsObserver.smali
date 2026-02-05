.class Lcom/android/server/ConnectivityService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUriEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 3378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    .line 3380
    iput-object p1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mContext:Landroid/content/Context;

    .line 3381
    iput-object p2, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 3382
    return-void
.end method


# virtual methods
.method observe(Landroid/net/Uri;I)V
    .registers 5

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3386
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3387
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3388
    return-void
.end method

.method public onChange(Z)V
    .registers 4

    .prologue
    .line 3392
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3398
    if-eqz v0, :cond_18

    .line 3399
    iget-object v1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3403
    :goto_17
    return-void

    .line 3401
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No matching event to send for URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap26(Ljava/lang/String;)V

    goto :goto_17
.end method
