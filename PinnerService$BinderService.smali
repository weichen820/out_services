.class final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-get0(Lcom/android/server/PinnerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "PinnerService"

    invoke-static {v0, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 375
    :cond_11
    const-string/jumbo v0, "Pinned Files:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    monitor-enter p0

    move v2, v1

    .line 377
    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3a

    .line 378
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 380
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    .line 381
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_19 .. :try_end_57} :catchall_5d

    .line 380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    :cond_5b
    monitor-exit p0

    .line 384
    return-void

    .line 376
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
