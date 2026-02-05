.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    .line 257
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DockObserver"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 258
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 260
    :try_start_15
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_e8

    .line 261
    if-eqz p3, :cond_21

    :try_start_1e
    array-length v0, p3

    if-nez v0, :cond_91

    .line 262
    :cond_21
    const-string/jumbo v0, "Current Dock Observer Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-get4(Lcom/android/server/DockObserver;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 264
    const-string/jumbo v0, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  reported state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  previous state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-get2(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  actual state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_1e .. :try_end_8c} :catchall_e5

    :goto_8c
    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_e8

    .line 292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return-void

    .line 261
    :cond_91
    :try_start_91
    const-string/jumbo v0, "-a"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 269
    array-length v0, p3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_105

    const-string/jumbo v0, "set"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 270
    const/4 v0, 0x1

    aget-object v0, p3, v0

    .line 271
    const/4 v4, 0x2

    aget-object v4, p3, v4
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_e5

    .line 273
    :try_start_b3
    const-string/jumbo v5, "state"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 274
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/server/DockObserver;->-set0(Lcom/android/server/DockObserver;Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/DockObserver;->-wrap2(Lcom/android/server/DockObserver;I)V
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_b3 .. :try_end_cb} :catch_cc
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_e5

    goto :goto_8c

    .line 279
    :catch_cc
    move-exception v0

    .line 280
    :try_start_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_cd .. :try_end_e4} :catchall_e5

    goto :goto_8c

    .line 260
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v1

    throw v0
    :try_end_e8
    .catchall {:try_start_e6 .. :try_end_e8} :catchall_e8

    .line 291
    :catchall_e8
    move-exception v0

    .line 292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw v0

    .line 277
    :cond_ed
    :try_start_ed
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown set option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_104} :catch_cc
    .catchall {:try_start_ed .. :try_end_104} :catchall_e5

    goto :goto_8c

    .line 282
    :cond_105
    :try_start_105
    array-length v0, p3

    if-ne v0, v5, :cond_127

    const-string/jumbo v0, "reset"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 283
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/server/DockObserver;->-set0(Lcom/android/server/DockObserver;Z)Z

    .line 284
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/DockObserver;->-wrap2(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_8c

    .line 286
    :cond_127
    const-string/jumbo v0, "Dump current dock state, or:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "  set state <value>"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "  reset"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_105 .. :try_end_139} :catchall_e5

    goto/16 :goto_8c
.end method
