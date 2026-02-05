.class Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 77
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v3

    monitor-enter v3

    .line 80
    :try_start_8
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_57

    .line 82
    const-string/jumbo v1, "CertBlacklister"

    const-string/jumbo v4, "Certificate blacklist changed, updating..."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_68

    .line 86
    :try_start_19
    const-string/jumbo v1, "journal"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v5

    invoke-static {v1, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 88
    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 90
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_33} :catch_59
    .catchall {:try_start_19 .. :try_end_33} :catchall_6b

    .line 91
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v2}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get0(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 96
    const-string/jumbo v0, "CertBlacklister"

    const-string/jumbo v2, "Certificate blacklist updated"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_54} :catch_73
    .catchall {:try_start_33 .. :try_end_54} :catchall_71

    .line 100
    :try_start_54
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_68

    :cond_57
    :goto_57
    monitor-exit v3

    .line 104
    return-void

    .line 97
    :catch_59
    move-exception v0

    move-object v1, v2

    .line 98
    :goto_5b
    :try_start_5b
    const-string/jumbo v2, "CertBlacklister"

    const-string/jumbo v4, "Failed to write blacklist"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_71

    .line 100
    :try_start_64
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_57

    .line 79
    :catchall_68
    move-exception v0

    monitor-exit v3

    throw v0

    .line 99
    :catchall_6b
    move-exception v0

    move-object v1, v2

    .line 100
    :goto_6d
    :try_start_6d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 99
    throw v0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_68

    :catchall_71
    move-exception v0

    goto :goto_6d

    .line 97
    :catch_73
    move-exception v0

    goto :goto_5b
.end method
