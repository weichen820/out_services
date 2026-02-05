.class Landroid/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "android.support.dataRemoteInputs"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "dataOnlyRemoteInputs"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_1f

    .line 71
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    if-eqz v0, :cond_1b

    .line 73
    if-nez v1, :cond_18

    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 76
    :cond_18
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 79
    :cond_1f
    return-object v1
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 204
    sget-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v0, :cond_7

    .line 205
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_7
    :try_start_7
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_46

    .line 209
    const-string/jumbo v0, "android.app.Notification$Action"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    .line 210
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    .line 211
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    .line 212
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string/jumbo v1, "actionIntent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    .line 213
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v1, "actions"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    .line 214
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_46} :catch_58
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_46} :catch_4b

    .line 223
    :cond_46
    :goto_46
    sget-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 219
    :catch_4b
    move-exception v0

    .line 220
    const-string/jumbo v1, "NotificationCompat"

    const-string/jumbo v2, "Unable to access notification actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_46

    .line 216
    :catch_58
    move-exception v0

    .line 217
    const-string/jumbo v1, "NotificationCompat"

    const-string/jumbo v2, "Unable to access notification actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_46
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .registers 8

    .prologue
    .line 262
    const-string/jumbo v0, "allowedDataTypes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 264
    if-eqz v0, :cond_22

    .line 265
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 269
    :cond_22
    new-instance v0, Landroid/support/v4/app/RemoteInput;

    const-string/jumbo v1, "resultKey"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string/jumbo v2, "label"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 271
    const-string/jumbo v3, "choices"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 272
    const-string/jumbo v4, "allowFreeFormInput"

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 273
    const-string/jumbo v5, "extras"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 269
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    return-object v0
.end method

.method private static fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 297
    if-nez p0, :cond_4

    .line 298
    return-object v0

    .line 300
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/support/v4/app/RemoteInput;

    .line 301
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 302
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 304
    :cond_16
    return-object v1
.end method

.method public static getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 160
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 162
    :try_start_4
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_4b

    .line 164
    aget-object v1, v0, p1

    .line 166
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_50

    .line 169
    const-string/jumbo v2, "android.support.actionExtras"

    .line 168
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_50

    .line 171
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    .line 174
    :goto_22
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 175
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 176
    sget-object v6, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 174
    invoke-static {v5, v0, v1, v2}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_3b} :catch_3e
    .catchall {:try_start_4 .. :try_end_3b} :catchall_4d

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 179
    :catch_3e
    move-exception v0

    .line 180
    :try_start_3f
    const-string/jumbo v1, "NotificationCompat"

    const-string/jumbo v2, "Unable to access notification actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_4d

    :cond_4b
    monitor-exit v4

    .line 184
    return-object v3

    .line 160
    :catchall_4d
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_50
    move-object v2, v3

    goto :goto_22
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 3

    .prologue
    .line 153
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_3
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_c

    array-length v0, v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 153
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getActionFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 227
    const-string/jumbo v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_11

    .line 230
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    invoke-virtual {v0, v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 232
    :cond_11
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 233
    const-string/jumbo v1, "icon"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 235
    const-string/jumbo v3, "actionIntent"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 236
    const-string/jumbo v4, "extras"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 237
    const-string/jumbo v5, "remoteInputs"

    invoke-static {p0, v5}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    .line 238
    const-string/jumbo v6, "dataOnlyRemoteInputs"

    invoke-static {p0, v6}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v6

    .line 232
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 188
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_4
    invoke-static {}, Landroid/support/v4/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_25

    move-result v0

    if-nez v0, :cond_c

    monitor-exit v1

    .line 190
    return-object v4

    .line 193
    :cond_c
    :try_start_c
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_14} :catch_16
    .catchall {:try_start_c .. :try_end_14} :catchall_25

    monitor-exit v1

    return-object v0

    .line 194
    :catch_16
    move-exception v0

    .line 195
    :try_start_17
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification actions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    monitor-exit v1

    .line 197
    return-object v4

    .line 188
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 325
    instance-of v1, v0, [Landroid/os/Bundle;

    if-nez v1, :cond_a

    if-nez v0, :cond_d

    .line 326
    :cond_a
    check-cast v0, [Landroid/os/Bundle;

    return-object v0

    .line 328
    :cond_d
    array-length v1, v0

    .line 329
    const-class v2, [Landroid/os/Bundle;

    .line 328
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 330
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 331
    return-object v0
.end method

.method static getBundleForAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 243
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 244
    const-string/jumbo v0, "icon"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string/jumbo v0, "title"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 246
    const-string/jumbo v0, "actionIntent"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 253
    :goto_32
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 254
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 253
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string/jumbo v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 256
    const-string/jumbo v0, "remoteInputs"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 257
    return-object v1

    .line 251
    :cond_51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_32
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 87
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_4
    sget-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_67

    if-eqz v0, :cond_a

    monitor-exit v1

    .line 89
    return-object v4

    .line 92
    :cond_a
    :try_start_a
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_37

    .line 93
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 94
    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 95
    const-string/jumbo v0, "NotificationCompat"

    const-string/jumbo v2, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_2f} :catch_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_2f} :catch_4d
    .catchall {:try_start_a .. :try_end_2f} :catchall_67

    monitor-exit v1

    .line 97
    return-object v4

    .line 99
    :cond_31
    const/4 v2, 0x1

    :try_start_32
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 100
    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    .line 102
    :cond_37
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 103
    if-nez v0, :cond_4b

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    sget-object v2, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_4b} :catch_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_4b} :catch_4d
    .catchall {:try_start_32 .. :try_end_4b} :catchall_67

    :cond_4b
    monitor-exit v1

    .line 107
    return-object v0

    .line 110
    :catch_4d
    move-exception v0

    .line 111
    :try_start_4e
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification extras"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_57
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_67

    monitor-exit v1

    .line 114
    return-object v4

    .line 108
    :catch_5c
    move-exception v0

    .line 109
    :try_start_5d
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification extras"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_67

    goto :goto_57

    .line 87
    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    if-eqz p3, :cond_2b

    .line 126
    const-string/jumbo v0, "android.support.remoteInputs"

    .line 125
    invoke-static {p3, v0}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    .line 128
    const-string/jumbo v0, "android.support.dataRemoteInputs"

    invoke-static {p3, v0}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v6

    .line 129
    const-string/jumbo v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 131
    :goto_21
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0

    :cond_2b
    move-object v5, v6

    goto :goto_21
.end method

.method private static toBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    const-string/jumbo v0, "resultKey"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, "label"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 281
    const-string/jumbo v0, "choices"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 282
    const-string/jumbo v0, "allowFreeFormInput"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string/jumbo v0, "extras"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_68

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_68

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 291
    :cond_62
    const-string/jumbo v0, "allowedDataTypes"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 293
    :cond_68
    return-object v1
.end method

.method private static toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 308
    if-nez p0, :cond_4

    .line 309
    return-object v0

    .line 311
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 312
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 313
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 315
    :cond_16
    return-object v1
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 140
    const-string/jumbo v1, "android.support.remoteInputs"

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 143
    :cond_2c
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 144
    const-string/jumbo v1, "android.support.dataRemoteInputs"

    .line 145
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/NotificationCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 147
    :cond_40
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    return-object v0
.end method
