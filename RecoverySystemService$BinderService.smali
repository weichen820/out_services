.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    move v2, v3

    .line 204
    :goto_3
    const/16 v0, 0x1e

    if-ge v2, v0, :cond_4e

    .line 205
    const-string/jumbo v0, "init.svc.uncrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string/jumbo v4, "init.svc.setup-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    const-string/jumbo v5, "init.svc.clear-bcb"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    const-string/jumbo v6, "running"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 209
    const-string/jumbo v0, "running"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    if-nez v0, :cond_38

    .line 209
    const-string/jumbo v0, "running"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    :goto_35
    if-nez v0, :cond_3a

    .line 218
    return v1

    :cond_38
    move v0, v1

    .line 208
    goto :goto_35

    .line 222
    :cond_3a
    const-wide/16 v4, 0x3e8

    :try_start_3c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_43

    .line 204
    :goto_3f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 223
    :catch_43
    move-exception v0

    .line 224
    const-string/jumbo v4, "RecoverySystemService"

    const-string/jumbo v5, "Interrupted:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 228
    :cond_4e
    return v3
.end method

.method private connectService()Landroid/net/LocalSocket;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 232
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    move v1, v0

    .line 237
    :goto_7
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_19

    .line 239
    :try_start_b
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v4, "uncrypt"

    .line 240
    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 239
    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_26

    .line 241
    const/4 v0, 0x1

    .line 251
    :cond_19
    if-nez v0, :cond_3a

    .line 252
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v1, "Timed out connecting to uncrypt socket"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 243
    :catch_26
    move-exception v3

    .line 245
    const-wide/16 v4, 0x3e8

    :try_start_29
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2f

    .line 237
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 246
    :catch_2f
    move-exception v3

    .line 247
    const-string/jumbo v4, "RecoverySystemService"

    const-string/jumbo v5, "Interrupted:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 255
    :cond_3a
    return-object v2
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 262
    if-nez v0, :cond_1e

    .line 263
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v1, "uncrypt service is unavailable."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v7

    .line 267
    :cond_1e
    if-eqz p1, :cond_39

    .line 268
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "setup-bcb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_29
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v4

    .line 275
    if-nez v4, :cond_43

    .line 276
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v1, "Failed to connect to uncrypt socket"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v7

    .line 270
    :cond_39
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "clear-bcb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 283
    :cond_43
    :try_start_43
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_c9
    .catchall {:try_start_43 .. :try_end_4c} :catchall_de

    .line 284
    :try_start_4c
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_55} :catch_f3
    .catchall {:try_start_4c .. :try_end_55} :catchall_eb

    .line 287
    if-eqz p1, :cond_64

    .line 288
    :try_start_57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 289
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 294
    :cond_64
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 298
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    const/16 v2, 0x64

    if-ne v0, v2, :cond_a5

    .line 301
    const-string/jumbo v2, "RecoverySystemService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uncrypt "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_a1

    const-string/jumbo v0, "setup"

    :goto_84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string/jumbo v5, " bcb successfully finished."

    .line 301
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_96} :catch_f7
    .catchall {:try_start_57 .. :try_end_96} :catchall_ee

    .line 312
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_a1
    :try_start_a1
    const-string/jumbo v0, "clear"

    goto :goto_84

    .line 305
    :cond_a5
    const-string/jumbo v2, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt failed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_bf} :catch_f7
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_ee

    .line 312
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 306
    return v7

    .line 308
    :catch_c9
    move-exception v0

    move-object v1, v2

    .line 309
    :goto_cb
    :try_start_cb
    const-string/jumbo v3, "RecoverySystemService"

    const-string/jumbo v5, "IOException when communicating with uncrypt:"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_f0

    .line 312
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 310
    return v7

    .line 311
    :catchall_de
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 312
    :goto_e1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 311
    throw v0

    :catchall_eb
    move-exception v0

    move-object v1, v2

    goto :goto_e1

    :catchall_ee
    move-exception v0

    goto :goto_e1

    :catchall_f0
    move-exception v0

    move-object v3, v2

    goto :goto_e1

    .line 308
    :catch_f3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_cb

    :catch_f7
    move-exception v0

    move-object v2, v3

    goto :goto_cb
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    .prologue
    .line 170
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v1

    monitor-exit v0

    return v1

    .line 170
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 186
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 187
    const/4 v0, 0x1

    :try_start_6
    invoke-direct {p0, v0, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_25

    move-result v0

    if-nez v0, :cond_e

    monitor-exit v1

    .line 188
    return-void

    .line 192
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 193
    const-string/jumbo v2, "recovery"

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_25

    monitor-exit v1

    .line 195
    return-void

    .line 186
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 178
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result v1

    monitor-exit v0

    return v1

    .line 178
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 15

    .prologue
    const/16 v10, 0x64

    const/high16 v4, -0x80000000

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 81
    :try_start_b
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 84
    if-nez v0, :cond_29

    .line 85
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v1, "uncrypt service is unavailable."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_8c

    monitor-exit v5

    .line 86
    return v9

    .line 91
    :cond_29
    :try_start_29
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_8c

    .line 93
    :try_start_2e
    new-instance v1, Ljava/io/FileWriter;

    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_7d
    .catchall {:try_start_2e .. :try_end_35} :catchall_178

    .line 94
    :try_start_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_4c} :catch_17f
    .catchall {:try_start_35 .. :try_end_4c} :catchall_17c

    .line 99
    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_7b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_55
    .catchall {:try_start_4e .. :try_end_51} :catchall_8c

    :cond_51
    move-object v0, v2

    :goto_52
    if-eqz v0, :cond_9b

    :try_start_54
    throw v0
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_8c

    .line 95
    :catch_55
    move-exception v0

    .line 96
    :try_start_56
    const-string/jumbo v1, "RecoverySystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException when writing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    const-string/jumbo v3, "\":"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_8c

    monitor-exit v5

    .line 98
    return v9

    .line 99
    :catch_7b
    move-exception v0

    goto :goto_52

    :catch_7d
    move-exception v0

    move-object v1, v2

    :goto_7f
    :try_start_7f
    throw v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    :catchall_80
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_84
    if-eqz v1, :cond_89

    :try_start_86
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8f
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_55
    .catchall {:try_start_86 .. :try_end_89} :catchall_8c

    :cond_89
    :goto_89
    if-eqz v2, :cond_9a

    :try_start_8b
    throw v2
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8c} :catch_55
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    .line 80
    :catchall_8c
    move-exception v0

    monitor-exit v5

    throw v0

    .line 99
    :catch_8f
    move-exception v1

    if-nez v2, :cond_94

    move-object v2, v1

    goto :goto_89

    :cond_94
    if-eq v2, v1, :cond_89

    :try_start_96
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_89

    :cond_9a
    throw v0
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_55
    .catchall {:try_start_96 .. :try_end_9b} :catchall_8c

    .line 102
    :cond_9b
    :try_start_9b
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "uncrypt"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v6

    .line 106
    if-nez v6, :cond_b5

    .line 107
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v1, "Failed to connect to uncrypt socket"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_9b .. :try_end_b3} :catchall_8c

    monitor-exit v5

    .line 108
    return v9

    .line 115
    :cond_b5
    :try_start_b5
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_be} :catch_172
    .catchall {:try_start_b5 .. :try_end_be} :catchall_15c

    .line 116
    :try_start_be
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c7} :catch_175
    .catchall {:try_start_be .. :try_end_c7} :catchall_169

    move v0, v4

    .line 119
    :cond_c8
    :goto_c8
    :try_start_c8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 121
    if-ne v2, v0, :cond_d0

    if-ne v0, v4, :cond_c8

    .line 126
    :cond_d0
    if-ltz v2, :cond_130

    if-gt v2, v10, :cond_130

    .line 128
    const-string/jumbo v0, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt read status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_ee} :catch_119
    .catchall {:try_start_c8 .. :try_end_ee} :catchall_16c

    .line 129
    if-eqz p2, :cond_f3

    .line 131
    :try_start_f0
    invoke-interface {p2, v2}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_f3} :catch_10e
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_119
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_16c

    .line 136
    :cond_f3
    :goto_f3
    if-ne v2, v10, :cond_159

    .line 137
    :try_start_f5
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v2, "uncrypt successfully finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_102} :catch_119
    .catchall {:try_start_f5 .. :try_end_102} :catchall_16c

    .line 158
    :try_start_102
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_10b
    .catchall {:try_start_102 .. :try_end_10b} :catchall_8c

    .line 163
    const/4 v0, 0x1

    monitor-exit v5

    return v0

    .line 132
    :catch_10e
    move-exception v0

    .line 133
    :try_start_10f
    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v7, "RemoteException when posting progress"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_118} :catch_119
    .catchall {:try_start_10f .. :try_end_118} :catchall_16c

    goto :goto_f3

    .line 154
    :catch_119
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    .line 155
    :goto_11c
    :try_start_11c
    const-string/jumbo v3, "RecoverySystemService"

    const-string/jumbo v4, "IOException when reading status: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_125
    .catchall {:try_start_11c .. :try_end_125} :catchall_16e

    .line 158
    :try_start_125
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_12e
    .catchall {:try_start_125 .. :try_end_12e} :catchall_8c

    monitor-exit v5

    .line 156
    return v9

    .line 146
    :cond_130
    :try_start_130
    const-string/jumbo v0, "RecoverySystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uncrypt failed with status: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_14e} :catch_119
    .catchall {:try_start_130 .. :try_end_14e} :catchall_16c

    .line 158
    :try_start_14e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_157
    .catchall {:try_start_14e .. :try_end_157} :catchall_8c

    monitor-exit v5

    .line 151
    return v9

    :cond_159
    move v0, v2

    goto/16 :goto_c8

    .line 157
    :catchall_15c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 158
    :goto_15f
    :try_start_15f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    throw v0
    :try_end_169
    .catchall {:try_start_15f .. :try_end_169} :catchall_8c

    :catchall_169
    move-exception v0

    move-object v1, v2

    goto :goto_15f

    :catchall_16c
    move-exception v0

    goto :goto_15f

    :catchall_16e
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_15f

    .line 154
    :catch_172
    move-exception v0

    move-object v1, v2

    goto :goto_11c

    :catch_175
    move-exception v0

    move-object v1, v3

    goto :goto_11c

    .line 99
    :catchall_178
    move-exception v0

    move-object v1, v2

    goto/16 :goto_84

    :catchall_17c
    move-exception v0

    goto/16 :goto_84

    :catch_17f
    move-exception v0

    goto/16 :goto_7f
.end method
