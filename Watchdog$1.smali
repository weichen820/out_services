.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$blockedCheckers:Ljava/util/List;

.field final synthetic val$newFd:Ljava/io/File;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$blockedCheckers:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/Watchdog$1;->val$newFd:Ljava/io/File;

    .line 601
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v3

    .line 605
    :goto_8
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$blockedCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 606
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$blockedCheckers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " stack trace:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string/jumbo v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$blockedCheckers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 610
    array-length v6, v5

    move v0, v3

    :goto_3e
    if-ge v0, v6, :cond_55

    aget-object v7, v5, v0

    .line 611
    const-string/jumbo v8, "    at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    const-string/jumbo v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 605
    :cond_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 615
    :cond_59
    const-string/jumbo v0, "*** GOODBYE!"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 618
    const-string/jumbo v1, "watchdog"

    const-string/jumbo v3, "system_server"

    .line 619
    iget-object v6, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/Watchdog$1;->val$newFd:Ljava/io/File;

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    .line 617
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 620
    return-void
.end method
