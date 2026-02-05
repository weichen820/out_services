.class Lcom/android/server/DockObserver$2;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    .line 237
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    .prologue
    .line 240
    const-string/jumbo v0, "DockObserver"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 241
    const-string/jumbo v0, "DockObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dock UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2f} :catch_44

    .line 246
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    const-string/jumbo v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/DockObserver;->-wrap1(Lcom/android/server/DockObserver;I)V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_41

    :try_start_3f
    monitor-exit v1

    .line 251
    :goto_40
    return-void

    .line 245
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_44} :catch_44

    .line 248
    :catch_44
    move-exception v0

    .line 249
    const-string/jumbo v0, "DockObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not parse switch state from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method
