.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/TextServicesManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->isSpellCheckerEnabledLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 154
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 156
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    :try_start_4d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_57} :catch_7e

    .line 169
    :goto_57
    new-instance v1, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    invoke-direct {v1, p0, v5}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V

    iput-object v1, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 170
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    invoke-virtual {v1, p1, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 172
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 173
    :goto_6f
    new-instance v2, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;IZ)V

    iput-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .line 177
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V

    .line 178
    return-void

    .line 166
    :catch_7e
    move-exception v0

    .line 167
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_57

    :cond_89
    move v1, v2

    .line 172
    goto :goto_6f
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7

    .prologue
    .line 370
    if-eqz p1, :cond_4

    if-nez p2, :cond_2a

    .line 371
    :cond_4
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_2a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 375
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 374
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private static buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Lcom/android/server/TextServicesManagerService$TextServicesSettings;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 267
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 273
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v3

    .line 273
    const/16 v4, 0x80

    .line 272
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 276
    :goto_22
    if-ge v1, v3, :cond_d8

    .line 277
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 278
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 279
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v6, "android.permission.BIND_TEXT_SERVICE"

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 281
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skipping text service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 282
    const-string/jumbo v5, ": it does not require the permission "

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 283
    const-string/jumbo v5, "android.permission.BIND_TEXT_SERVICE"

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 288
    :cond_6b
    :try_start_6b
    new-instance v4, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v4, p0, v0}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 289
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_b2

    .line 290
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skipping text service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 291
    const-string/jumbo v6, ": it does not contain subtypes."

    .line 290
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_96} :catch_97
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_96} :catch_bd

    goto :goto_67

    .line 296
    :catch_97
    move-exception v0

    .line 297
    sget-object v4, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to load the spell checker "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 294
    :cond_b2
    :try_start_b2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_bc} :catch_97
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_bc} :catch_bd

    goto :goto_67

    .line 298
    :catch_bd
    move-exception v0

    .line 299
    sget-object v4, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to load the spell checker "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 305
    :cond_d8
    return-void
.end method

.method private calledFromValidUser()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 313
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 330
    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_16

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v0

    if-ne v3, v0, :cond_17

    .line 331
    :cond_16
    return v1

    .line 338
    :cond_17
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    .line 342
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 343
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_3c

    .line 345
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 347
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    move v0, v1

    .line 352
    :goto_37
    if-eqz v0, :cond_3c

    .line 353
    return v1

    :cond_3a
    move v0, v2

    .line 347
    goto :goto_37

    .line 365
    :cond_3c
    return v2
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    .line 389
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    .line 390
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 394
    :cond_29
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 395
    if-nez v7, :cond_38

    .line 396
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no available spell checker services found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v4

    .line 399
    :cond_38
    if-eqz p1, :cond_52

    move v1, v3

    .line 400
    :goto_3b
    if-ge v1, v7, :cond_52

    .line 401
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    .line 402
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 406
    return-object v0

    .line 400
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b

    .line 414
    :cond_52
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 416
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v8

    .line 421
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v3

    .line 422
    :goto_67
    if-ge v5, v9, :cond_9d

    .line 423
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    move v4, v3

    .line 424
    :goto_70
    if-ge v4, v7, :cond_99

    .line 426
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 427
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v10

    move v2, v3

    .line 428
    :goto_7d
    if-ge v2, v10, :cond_95

    .line 429
    invoke-virtual {v1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v11

    .line 431
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    .line 430
    invoke-static {v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    .line 432
    invoke-virtual {v0, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 436
    return-object v1

    .line 428
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 425
    :cond_95
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_70

    .line 422
    :cond_99
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_67

    .line 442
    :cond_9d
    const/4 v0, 0x1

    if-le v7, v0, :cond_a8

    .line 443
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "more than one spell checker service found, picking first"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_a8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method private getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;
    .registers 4

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_3
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    move-result v2

    if-eqz v2, :cond_12

    .line 466
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 468
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    .line 460
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getStackTrace()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 1148
    :catch_b
    move-exception v0

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1151
    const/4 v0, 0x1

    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_27

    .line 1152
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1155
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSpellCheckerEnabledLocked()Z
    .registers 5

    .prologue
    .line 696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 698
    :try_start_4
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isSpellCheckerEnabled()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v0

    .line 704
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    return v0

    .line 703
    :catchall_e
    move-exception v0

    .line 704
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 703
    throw v0
.end method

.method private resetInternalState(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 183
    :goto_d
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService;->updateCurrentProfileIds()V

    .line 185
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked()V

    .line 186
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 188
    if-nez v0, :cond_30

    .line 189
    invoke-direct {p0, v4}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 195
    :cond_30
    return-void

    .line 182
    :cond_31
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;)V
    .registers 6

    .prologue
    .line 663
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 669
    :try_start_a
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellChecker(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_17

    .line 671
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    return-void

    .line 663
    :cond_13
    const-string/jumbo v0, ""

    goto :goto_6

    .line 670
    :catchall_17
    move-exception v0

    .line 671
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw v0
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    move v1, v0

    .line 681
    :goto_7
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 682
    invoke-virtual {v2, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_28

    .line 687
    :goto_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 689
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellCheckerSubtype(I)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2b

    .line 691
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    return-void

    :cond_26
    move p1, v0

    .line 681
    goto :goto_19

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 690
    :catchall_2b
    move-exception v0

    .line 691
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw v0
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .registers 6

    .prologue
    .line 608
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-direct {v1, p0, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V

    .line 610
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 616
    const v3, 0x800001

    .line 615
    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 617
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to get a spell checker service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_2b
    new-instance v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v2, p0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V

    .line 621
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-object v2
.end method

.method private unbindServiceLocked()V
    .registers 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 380
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_a

    .line 382
    :cond_1a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 383
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 712
    :cond_c
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 713
    :try_start_f
    const-string/jumbo v0, "Current Text Services Manager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const-string/jumbo v0, "  Spell Checkers:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Spell Checker #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    const-string/jumbo v5, "    "

    invoke-virtual {v0, p2, v5}, Landroid/view/textservice/SpellCheckerInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 719
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 721
    :cond_53
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const-string/jumbo v0, "  Spell Checker Bind Groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 723
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_69
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 725
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      mInternalConnection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      mSpellChecker="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get5(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      mUnbindCalled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get6(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      mConnected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get4(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 732
    :goto_11f
    if-ge v2, v6, :cond_1a6

    .line 733
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get4(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "      Pending Request #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mTsListener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mScListener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mScLocale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mUid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mUserId:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_11f

    .line 739
    :cond_1a6
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get3(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 740
    :goto_1af
    if-ge v2, v6, :cond_238

    .line 741
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get3(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "      On going Request #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v2, v2, 0x1

    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mTsListener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mScListener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mScLocale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mUid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mUserId:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1af

    .line 749
    :cond_238
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get2(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v6

    move v2, v3

    .line 750
    :goto_241
    if-ge v2, v6, :cond_69

    .line 752
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get2(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 753
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "      Listener #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        mScListener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "        mGroup="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_241

    .line 758
    :cond_29d
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    const-string/jumbo v0, "  mSettings:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    const-string/jumbo v1, "    "

    invoke-virtual {v0, p2, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_2b1
    .catchall {:try_start_f .. :try_end_2b1} :catchall_2b3

    monitor-exit v4

    .line 762
    return-void

    .line 712
    :catchall_2b3
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 7

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 643
    return-void

    .line 648
    :cond_7
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 650
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 651
    if-eqz v0, :cond_19

    .line 653
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2b

    goto :goto_19

    .line 648
    :catchall_2b
    move-exception v0

    monitor-exit v2

    throw v0

    .line 655
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 656
    const/4 v0, 0x0

    move v1, v0

    :goto_34
    if-ge v1, v4, :cond_43

    .line 657
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_2b

    .line 656
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_43
    monitor-exit v2

    .line 660
    return-void
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 454
    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_8
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 13

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 478
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_a

    .line 479
    return-object v1

    .line 484
    :cond_a
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 486
    :try_start_d
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellCheckerSubtype(I)I

    move-result v4

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v5

    .line 491
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2f

    monitor-exit v3

    .line 493
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_32

    .line 497
    :cond_2e
    return-object v1

    .line 484
    :catchall_2f
    move-exception v0

    monitor-exit v3

    throw v0

    .line 499
    :cond_32
    if-nez v4, :cond_39

    .line 500
    xor-int/lit8 v0, p2, 0x1

    .line 499
    if-eqz v0, :cond_39

    .line 501
    return-object v1

    .line 504
    :cond_39
    if-nez v4, :cond_99

    .line 506
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 507
    if-eqz v0, :cond_97

    .line 509
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_97

    .line 511
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 518
    :goto_57
    if-nez v0, :cond_5d

    .line 520
    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    :goto_5d
    move v9, v2

    move-object v2, v1

    move v1, v9

    .line 524
    :goto_60
    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v3

    if-ge v1, v3, :cond_96

    .line 525
    invoke-virtual {v5, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 526
    if-nez v4, :cond_8f

    .line 527
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 528
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 529
    return-object v3

    .line 530
    :cond_77
    if-nez v2, :cond_8c

    .line 531
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_8c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_8c

    .line 532
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 531
    if-eqz v6, :cond_8c

    move-object v2, v3

    .line 524
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 537
    :cond_8f
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v6

    if-ne v6, v4, :cond_8c

    .line 543
    return-object v3

    .line 549
    :cond_96
    return-object v2

    :cond_97
    move-object v0, v1

    goto :goto_57

    :cond_99
    move-object v0, v1

    goto :goto_5d
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 629
    const/4 v0, 0x0

    return-object v0

    .line 637
    :cond_8
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .registers 16

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_7

    .line 557
    return-void

    .line 559
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v2, :cond_c

    .line 560
    return-void

    .line 562
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    if-nez p3, :cond_1d

    .line 563
    :cond_14
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getSpellCheckerService: Invalid input."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 562
    :cond_1d
    if-eqz p4, :cond_14

    .line 566
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 567
    :try_start_22
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_58

    move-result v2

    if-nez v2, :cond_2c

    monitor-exit v9

    .line 568
    return-void

    .line 570
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerInfo;

    .line 571
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v4, v0

    .line 572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 573
    if-nez v4, :cond_5b

    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_58

    move-result-wide v6

    .line 576
    :try_start_48
    invoke-direct {p0, v2}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_53

    move-result-object v4

    .line 578
    :try_start_4c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_58

    .line 580
    if-nez v4, :cond_5b

    monitor-exit v9

    .line 582
    return-void

    .line 577
    :catchall_53
    move-exception v2

    .line 578
    :try_start_54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    throw v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 566
    :catchall_58
    move-exception v2

    monitor-exit v9

    throw v2

    :cond_5b
    move-object v8, v4

    .line 589
    :try_start_5c
    new-instance v2, Lcom/android/server/TextServicesManagerService$SessionRequest;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    .line 588
    invoke-virtual {v8, v2}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_58

    monitor-exit v9

    .line 591
    return-void
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 596
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_8
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->isSpellCheckerEnabledLocked()Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_11

    move-result v1

    monitor-exit v0

    return v1

    .line 598
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method onSwitchUser(I)V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 140
    return-void

    .line 137
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method onUnlockUser(I)V
    .registers 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_3
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    move-result v0

    .line 145
    if-eq p1, v0, :cond_d

    monitor-exit v1

    .line 146
    return-void

    .line 148
    :cond_d
    :try_start_d
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 150
    return-void

    .line 143
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method systemRunning()V
    .registers 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v0, :cond_13

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 131
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v1

    .line 134
    return-void

    .line 128
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateCurrentProfileIds()V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .line 199
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentProfileIds([I)V

    .line 200
    return-void
.end method
