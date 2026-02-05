.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$AppThreshold;,
        Lcom/android/server/RescueParty$BootThreshold;,
        Lcom/android/server/RescueParty$Threshold;
    }
.end annotation


# static fields
.field private static final LEVEL_FACTORY_RESET:I = 0x4

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field private static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field private static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field private static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field private static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field private static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field private static final TAG:Ljava/lang/String; = "RescueParty"

.field private static sApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/RescueParty$Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBoot:Lcom/android/server/RescueParty$Threshold;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/android/server/RescueParty$BootThreshold;

    invoke-direct {v0}, Lcom/android/server/RescueParty$BootThreshold;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string/jumbo v0, "sys.rescue_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 163
    if-nez v1, :cond_b

    return-void

    .line 165
    :cond_b
    const-string/jumbo v0, "RescueParty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_29
    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;I)V

    .line 168
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished rescue level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_4b} :catch_4c

    .line 177
    :goto_4b
    return-void

    .line 171
    :catch_4c
    move-exception v0

    .line 172
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v1, v0}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_4b
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_1a

    .line 194
    :goto_3
    return-void

    .line 182
    :pswitch_4
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    goto :goto_3

    .line 185
    :pswitch_9
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    goto :goto_3

    .line 188
    :pswitch_e
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    goto :goto_3

    .line 191
    :pswitch_13
    const-string/jumbo v0, "RescueParty"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_9
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method private static getAllUserIds()[I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 318
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    .line 320
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_27

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_12
    if-ge v1, v3, :cond_32

    :try_start_14
    aget-object v4, v2, v1
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_16} :catch_33

    .line 322
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 323
    if-eqz v4, :cond_24

    .line 324
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_23} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_23} :catch_33

    move-result-object v0

    .line 320
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 329
    :catch_27
    move-exception v0

    .line 330
    :goto_28
    const-string/jumbo v2, "RescueParty"

    const-string/jumbo v3, "Trouble discovering users"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 332
    :cond_32
    return-object v0

    .line 329
    :catch_33
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_28

    .line 326
    :catch_38
    move-exception v4

    goto :goto_24
.end method

.method private static incrementRescueLevel(I)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string/jumbo v0, "sys.rescue_level"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 145
    const/4 v1, 0x4

    .line 143
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 146
    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v0, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incremented rescue level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, " triggered by UID "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    .line 151
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 135
    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private static isDisabled()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    const-string/jumbo v0, "persist.sys.enable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 74
    return v1

    .line 78
    :cond_c
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_1a

    .line 79
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Disabled because of eng build"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v2

    .line 86
    :cond_1a
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 87
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Disabled because of active USB connection"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2

    .line 92
    :cond_2e
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 93
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Disabled because of manual property"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2

    .line 97
    :cond_41
    return v1
.end method

.method private static isUsbActive()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 340
    const-string/jumbo v0, "ro.hardware.virtual_device"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 341
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Assuming virtual device is connected over USB"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    const/16 v2, 0x80

    .line 345
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string/jumbo v1, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_30} :catch_32

    move-result v0

    return v0

    .line 348
    :catch_32
    move-exception v0

    .line 349
    const-string/jumbo v1, "RescueParty"

    const-string/jumbo v2, "Failed to determine if device was on USB"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    return v3
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    packed-switch p0, :pswitch_data_1c

    .line 361
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :pswitch_8
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 357
    :pswitch_c
    const-string/jumbo v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 358
    :pswitch_10
    const-string/jumbo v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 359
    :pswitch_14
    const-string/jumbo v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 360
    :pswitch_18
    const-string/jumbo v0, "FACTORY_RESET"

    return-object v0

    .line 355
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
    .end packed-switch
.end method

.method public static noteBoot(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 106
    :cond_7
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 107
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 108
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->-get0(Lcom/android/server/RescueParty$Threshold;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 109
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 111
    :cond_20
    return-void
.end method

.method public static notePersistentAppCrash(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 118
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 119
    :cond_7
    sget-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RescueParty$Threshold;

    .line 120
    if-nez v0, :cond_1b

    .line 121
    new-instance v0, Lcom/android/server/RescueParty$AppThreshold;

    invoke-direct {v0, p1}, Lcom/android/server/RescueParty$AppThreshold;-><init>(I)V

    .line 122
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 125
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 126
    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->-get0(Lcom/android/server/RescueParty$Threshold;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 127
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 129
    :cond_2e
    return-void
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_1b

    .line 206
    :goto_b
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v3

    array-length v4, v3

    :goto_10
    if-ge v1, v4, :cond_40

    aget v5, v3, v1

    .line 208
    const/4 v6, 0x0

    :try_start_15
    invoke-static {v2, v6, p1, v5}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_25

    .line 206
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 203
    :catch_1b
    move-exception v3

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to reset global settings"

    invoke-direct {v0, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 209
    :catch_25
    move-exception v6

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to reset secure settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 213
    :cond_40
    if-eqz v0, :cond_43

    .line 214
    throw v0

    .line 216
    :cond_43
    return-void
.end method
