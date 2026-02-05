.class public final Landroid/support/v4/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$CancelTask;,
        Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;,
        Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;,
        Landroid/support/v4/app/NotificationManagerCompat$Task;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sEnabledNotificationListenersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sEnabledNotificationListenersLock"
    .end annotation
.end field

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 154
    const-string/jumbo v1, "notification"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 155
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;
    .registers 2

    .prologue
    .line 148
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 259
    const-string/jumbo v1, "enabled_notification_listeners"

    .line 257
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    sget-object v2, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    if-eqz v1, :cond_41

    .line 263
    :try_start_10
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 262
    if-eqz v0, :cond_41

    .line 264
    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 265
    new-instance v4, Ljava/util/HashSet;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 266
    const/4 v0, 0x0

    array-length v5, v3

    :goto_29
    if-ge v0, v5, :cond_3d

    aget-object v6, v3, v0

    .line 267
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 268
    if-eqz v6, :cond_3a

    .line 269
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 272
    :cond_3d
    sput-object v4, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 273
    sput-object v1, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 275
    :cond_41
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_45

    monitor-exit v2

    return-object v0

    .line 260
    :catchall_45
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    .registers 5

    .prologue
    .line 291
    sget-object v1, Landroid/support/v4/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_3
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    if-nez v0, :cond_14

    .line 293
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    .line 295
    :cond_14
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 297
    return-void

    .line 291
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .registers 3

    .prologue
    .line 283
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_e

    const-string/jumbo v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0

    .line 217
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8e

    .line 219
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 220
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 221
    iget-object v4, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 222
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 224
    :try_start_32
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 225
    const-string/jumbo v6, "checkOpNoThrow"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 226
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 225
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 227
    const-string/jumbo v7, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 228
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 229
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v7, v5

    const/4 v1, 0x2

    aput-object v4, v7, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_85} :catch_8c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_85} :catch_8c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_85} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_85} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_85} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_85} :catch_8c

    move-result v0

    if-nez v0, :cond_8a

    move v0, v2

    :goto_89
    return v0

    :cond_8a
    move v0, v3

    goto :goto_89

    .line 232
    :catch_8c
    move-exception v0

    .line 233
    return v2

    .line 236
    :cond_8e
    return v2
.end method

.method public cancel(I)V
    .registers 3

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_19

    .line 173
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    .line 175
    :cond_19
    return-void
.end method

.method public cancelAll()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_19

    .line 181
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    .line 183
    :cond_19
    return-void
.end method

.method public getImportance()I
    .registers 3

    .prologue
    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v0

    return v0

    .line 249
    :cond_d
    const/16 v0, -0x3e8

    return v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .registers 4

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 192
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6

    .prologue
    .line 201
    invoke-static {p3}, Landroid/support/v4/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 202
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p3}, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    .line 205
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 209
    :goto_19
    return-void

    .line 207
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_19
.end method
