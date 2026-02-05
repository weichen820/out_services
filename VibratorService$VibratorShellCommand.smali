.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation


# static fields
.field private static final MAX_VIBRATION_MS:J = 0xc8L


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 965
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 966
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private runVibrate()I
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 978
    :try_start_2
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 979
    const-string/jumbo v1, "zen_mode"

    .line 978
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_12} :catch_33

    move-result v0

    .line 980
    if-eqz v0, :cond_34

    .line 981
    :try_start_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_4e
    .catchall {:try_start_15 .. :try_end_18} :catchall_83

    move-result-object v1

    .line 982
    :try_start_19
    const-string/jumbo v3, "Ignoring because device is on DND mode "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 983
    const-class v3, Landroid/provider/Settings$Global;

    const-string/jumbo v5, "ZEN_MODE_"

    invoke-static {v3, v5, v0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2b} :catch_88
    .catchall {:try_start_19 .. :try_end_2b} :catchall_86

    .line 986
    if-eqz v1, :cond_30

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_4b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2d .. :try_end_30} :catch_33

    :cond_30
    :goto_30
    if-eqz v2, :cond_4d

    :try_start_32
    throw v2
    :try_end_33
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_32 .. :try_end_33} :catch_33

    .line 988
    :catch_33
    move-exception v0

    .line 992
    :cond_34
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 993
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-lez v2, :cond_69

    .line 994
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maximum duration is 200"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :catch_4b
    move-exception v2

    goto :goto_30

    .line 985
    :cond_4d
    return v4

    .line 986
    :catch_4e
    move-exception v0

    move-object v1, v2

    :goto_50
    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_57 .. :try_end_5a} :catch_33

    :cond_5a
    :goto_5a
    if-eqz v2, :cond_68

    :try_start_5c
    throw v2

    :catch_5d
    move-exception v1

    if-nez v2, :cond_62

    move-object v2, v1

    goto :goto_5a

    :cond_62
    if-eq v2, v1, :cond_5a

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5a

    :cond_68
    throw v0
    :try_end_69
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5c .. :try_end_69} :catch_33

    .line 996
    :cond_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 997
    if-nez v2, :cond_72

    .line 998
    const-string/jumbo v2, "Shell command"

    .line 1002
    :cond_72
    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 1003
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1004
    iget-object v5, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1003
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V

    .line 1005
    return v4

    .line 986
    :catchall_83
    move-exception v0

    move-object v1, v2

    goto :goto_55

    :catchall_86
    move-exception v0

    goto :goto_55

    :catch_88
    move-exception v0

    goto :goto_50
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 970
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 971
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    .line 973
    :cond_e
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1010
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_3f
    .catchall {:try_start_1 .. :try_end_4} :catchall_5b

    move-result-object v1

    .line 1011
    :try_start_5
    const-string/jumbo v0, "Vibrator commands:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v0, "  help"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v0, "    Prints this help text."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v0, "  vibrate duration [description]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v0, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v0, "    (Do Not Disturb) mode."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_35} :catch_60
    .catchall {:try_start_5 .. :try_end_35} :catchall_5e

    .line 1019
    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3d

    :cond_3a
    :goto_3a
    if-eqz v2, :cond_5a

    throw v2

    :catch_3d
    move-exception v2

    goto :goto_3a

    :catch_3f
    move-exception v0

    move-object v1, v2

    :goto_41
    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    :goto_46
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4e

    :cond_4b
    :goto_4b
    if-eqz v2, :cond_59

    throw v2

    :catch_4e
    move-exception v1

    if-nez v2, :cond_53

    move-object v2, v1

    goto :goto_4b

    :cond_53
    if-eq v2, v1, :cond_4b

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b

    :cond_59
    throw v0

    .line 1020
    :cond_5a
    return-void

    .line 1019
    :catchall_5b
    move-exception v0

    move-object v1, v2

    goto :goto_46

    :catchall_5e
    move-exception v0

    goto :goto_46

    :catch_60
    move-exception v0

    goto :goto_41
.end method
