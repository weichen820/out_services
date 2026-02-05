.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EntropyMixer$1;,
        Lcom/android/server/EntropyMixer$2;
    }
.end annotation


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final hwRandomDevice:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/dev/urandom"

    const-string/jumbo v2, "/dev/hw_random"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/EntropyMixer$1;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    if-nez p3, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "randomDevice"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1c
    if-nez p4, :cond_27

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "hwRandomDevice"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_27
    if-nez p2, :cond_32

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "entropyFile"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_32
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 111
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    .line 112
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 162
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_93
    .catchall {:try_start_1 .. :try_end_d} :catchall_a4

    .line 163
    :try_start_d
    const-string/jumbo v0, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "All Your Randomness Are Belong To Us"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    sget-wide v2, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 166
    sget-wide v2, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 167
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "ro.bootmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "ro.bootloader"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "ro.revision"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8d} :catch_ae
    .catchall {:try_start_d .. :try_end_8d} :catchall_ac

    .line 181
    if-eqz v1, :cond_92

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 185
    :cond_92
    :goto_92
    return-void

    .line 178
    :catch_93
    move-exception v0

    move-object v1, v2

    .line 179
    :goto_95
    :try_start_95
    const-string/jumbo v2, "EntropyMixer"

    const-string/jumbo v3, "Unable to add device specific data to the entropy pool"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_ac

    .line 181
    if-eqz v1, :cond_92

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_92

    .line 180
    :catchall_a4
    move-exception v0

    move-object v1, v2

    .line 181
    :goto_a6
    if-eqz v1, :cond_ab

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 180
    :cond_ab
    throw v0

    :catchall_ac
    move-exception v0

    goto :goto_a6

    .line 178
    :catch_ae
    move-exception v0

    goto :goto_95
.end method

.method private addHwRandomEntropy()V
    .registers 4

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V

    .line 193
    const-string/jumbo v0, "EntropyMixer"

    const-string/jumbo v1, "Added HW RNG output to entropy pool"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_15} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 199
    :goto_15
    return-void

    .line 196
    :catch_16
    move-exception v0

    .line 197
    const-string/jumbo v1, "EntropyMixer"

    const-string/jumbo v2, "Failed to add HW RNG output to entropy pool"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 194
    :catch_21
    move-exception v0

    goto :goto_15
.end method

.method private static getSystemDir()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadInitialEntropy()V
    .registers 4

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 134
    :goto_c
    return-void

    .line 131
    :catch_d
    move-exception v0

    .line 132
    const-string/jumbo v1, "EntropyMixer"

    const-string/jumbo v2, "Failure loading existing entropy file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 129
    :catch_18
    move-exception v0

    .line 130
    const-string/jumbo v0, "EntropyMixer"

    const-string/jumbo v1, "No existing entropy file -- first boot?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private scheduleEntropyWriter()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method private writeEntropy()V
    .registers 4

    .prologue
    .line 138
    :try_start_0
    const-string/jumbo v0, "EntropyMixer"

    const-string/jumbo v1, "Writing entropy..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 143
    :goto_15
    return-void

    .line 140
    :catch_16
    move-exception v0

    .line 141
    const-string/jumbo v1, "EntropyMixer"

    const-string/jumbo v2, "Unable to write entropy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
