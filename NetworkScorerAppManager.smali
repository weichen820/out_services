.class public Lcom/android/server/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScorerAppManager$SettingsFacade;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScorerAppManager"

.field private static final VERBOSE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "NetworkScorerAppManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 50
    const-string/jumbo v0, "NetworkScorerAppManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    invoke-direct {v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 62
    return-void
.end method

.method private canAccessLocation(ILjava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 215
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 216
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->isLocationModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 217
    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2b

    .line 219
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    .line 216
    :goto_28
    return v0

    :cond_29
    move v0, v1

    .line 219
    goto :goto_28

    :cond_2b
    move v0, v1

    .line 216
    goto :goto_28
.end method

.method private findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_28

    .line 123
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 124
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No metadata found on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_27
    return-object v5

    .line 128
    :cond_28
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 129
    const-string/jumbo v1, "android.net.wifi.use_open_wifi_package"

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 131
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_59

    .line 132
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No use_open_wifi_package metadata found on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_59
    return-object v5

    .line 137
    :cond_5a
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    .line 139
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 141
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v2, :cond_9a

    .line 142
    const-string/jumbo v2, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resolved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_9a
    if-eqz v1, :cond_a7

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_a7

    .line 146
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 149
    :cond_a7
    return-object v5
.end method

.method private getDefaultPackageSetting()Ljava/lang/String;
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    const v1, 0x1040120

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_28

    .line 155
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 156
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No metadata found on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_27
    return-object v3

    .line 161
    :cond_28
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 162
    const-string/jumbo v1, "android.net.wifi.notification_channel_id_network_available"

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkRecommendationsEnabledSetting()I
    .registers 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkRecommendationsPackage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_15

    .line 110
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 111
    const-string/jumbo v2, "android.net.scoring.recommendation_service_label"

    .line 110
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 113
    return-object v1

    .line 116
    :cond_15
    invoke-virtual {p1, p2}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    if-nez v1, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 186
    return-object v4

    .line 190
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v2

    .line 191
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 192
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppData;

    .line 193
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 194
    return-object v0

    .line 191
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 198
    :cond_29
    return-object v4
.end method

.method private hasPermissions(ILjava/lang/String;)Z
    .registers 4

    .prologue
    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/NetworkScorerAppManager;->hasScoreNetworksPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScorerAppManager;->canAccessLocation(ILjava/lang/String;)Z

    move-result v0

    .line 202
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private hasScoreNetworksPermission(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    const-string/jumbo v2, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isLocationModeEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v2, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "location_mode"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getSecureInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private setNetworkRecommendationsEnabledSetting(I)V
    .registers 5

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 385
    const-string/jumbo v2, "network_recommendations_enabled"

    .line 384
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 386
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_28

    .line 387
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network_recommendations_enabled set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_28
    return-void
.end method

.method private setNetworkRecommendationsPackage(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 373
    const-string/jumbo v2, "network_recommendations_package"

    .line 372
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_28

    .line 375
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network_recommendations_package set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_28
    return-void
.end method


# virtual methods
.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    .line 177
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_9
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v0

    return-object v0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScorerAppManager"

    const-string/jumbo v1, "getAllValidScorers()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const/16 v1, 0x80

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 75
    if-eqz v8, :cond_29

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 76
    :cond_29
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found 0 Services able to handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 80
    :cond_4c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const/4 v0, 0x0

    move v6, v0

    :goto_53
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_d3

    .line 82
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 83
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/NetworkScorerAppManager;->hasPermissions(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 84
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_8d

    .line 85
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is a valid scorer/recommender."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_8d
    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v1, v7}, Lcom/android/server/NetworkScorerAppManager;->getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 93
    invoke-static {v1}, Lcom/android/server/NetworkScorerAppManager;->getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v5

    .line 95
    new-instance v0, Landroid/net/NetworkScorerAppData;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkScorerAppData;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 94
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_ae
    :goto_ae
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_53

    .line 99
    :cond_b2
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_ae

    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    const-string/jumbo v2, " is NOT a valid scorer/recommender."

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 104
    :cond_d3
    return-object v9
.end method

.method public migrateNetworkScorerAppSettingIfNeeded()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_scorer_app"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 320
    return-void

    .line 323
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    .line 324
    if-nez v1, :cond_1a

    .line 326
    return-void

    .line 329
    :cond_1a
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v2, :cond_3f

    .line 330
    const-string/jumbo v2, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Migrating Settings.Global.NETWORK_SCORER_APP ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    const-string/jumbo v4, ")..."

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3f
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v3, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "use_open_wifi_package"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 342
    if-eqz v1, :cond_8f

    .line 343
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 341
    if-eqz v1, :cond_8f

    .line 344
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v2, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "use_open_wifi_package"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v1, :cond_8f

    .line 347
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Settings.Global.USE_OPEN_WIFI_PACKAGE set to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string/jumbo v2, "\'."

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_8f
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_scorer_app"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_d2

    .line 355
    const-string/jumbo v0, "NetworkScorerAppManager"

    const-string/jumbo v1, "Settings.Global.NETWORK_SCORER_APP migration complete."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "use_open_wifi_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Settings.Global.USE_OPEN_WIFI_PACKAGE is: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_d2
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 241
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 245
    return v4

    .line 248
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 249
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network scorer forced off, was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, v5}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 252
    const/4 v0, -0x1

    .line 251
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 253
    return v4

    .line 257
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 258
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Changing network scorer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, v4}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 261
    return v4

    .line 263
    :cond_67
    const-string/jumbo v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested network scorer is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public updateState()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v1

    .line 281
    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 283
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "NetworkScorerAppManager"

    const-string/jumbo v1, "Recommendations forced off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_15
    return-void

    .line 288
    :cond_16
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-direct {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 290
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v1, :cond_3e

    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is the active scorer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_3e
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 292
    return-void

    .line 295
    :cond_42
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getDefaultPackageSetting()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 299
    invoke-direct {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 300
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v1, :cond_71

    .line 301
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Defaulting the network recommendations app to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_71
    invoke-direct {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 308
    :goto_74
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 309
    return-void

    :cond_78
    move v0, v1

    .line 299
    goto :goto_74
.end method
