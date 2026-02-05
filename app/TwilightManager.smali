.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroid/support/v7/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 69
    iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 71
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    if-nez v0, :cond_18

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 51
    new-instance v2, Landroid/support/v7/app/TwilightManager;

    .line 52
    const-string/jumbo v0, "location"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 51
    invoke-direct {v2, v1, v0}, Landroid/support/v7/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v2, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    .line 54
    :cond_18
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 110
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 109
    invoke-static {v0, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 111
    if-nez v0, :cond_3c

    .line 112
    const-string/jumbo v0, "network"

    invoke-direct {p0, v0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 115
    :goto_13
    iget-object v2, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 116
    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 115
    invoke-static {v2, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 117
    if-nez v2, :cond_25

    .line 118
    const-string/jumbo v1, "gps"

    invoke-direct {p0, v1}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 121
    :cond_25
    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    .line 123
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_36

    move-object v0, v1

    :cond_36
    return-object v0

    .line 126
    :cond_37
    if-eqz v1, :cond_3a

    :goto_39
    return-object v1

    :cond_3a
    move-object v1, v0

    goto :goto_39

    :cond_3c
    move-object v0, v1

    goto :goto_13
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 134
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    .line 136
    :catch_f
    move-exception v0

    .line 137
    const-string/jumbo v1, "TwilightManager"

    const-string/jumbo v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private isStateValid()Z
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    iget-wide v0, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static setInstance(Landroid/support/v7/app/TwilightManager;)V
    .registers 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    sput-object p0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    .line 60
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 22
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 149
    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v3

    .line 152
    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 152
    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 154
    iget-wide v14, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 158
    iget v2, v3, Landroid/support/v7/app/TwilightCalculator;->state:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6a

    const/4 v2, 0x1

    .line 159
    :goto_30
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v16, v0

    .line 160
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v18, v0

    .line 163
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 163
    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 165
    iget-wide v6, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 169
    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_55

    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-nez v3, :cond_6c

    .line 171
    :cond_55
    const-wide/32 v4, 0x2932e00

    add-long/2addr v4, v12

    .line 185
    :goto_59
    iput-boolean v2, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 186
    iput-wide v14, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 187
    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 188
    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    .line 189
    iput-wide v6, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 190
    iput-wide v4, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 191
    return-void

    .line 158
    :cond_6a
    const/4 v2, 0x0

    goto :goto_30

    .line 173
    :cond_6c
    cmp-long v3, v12, v18

    if-lez v3, :cond_78

    .line 168
    const-wide/16 v4, 0x0

    .line 174
    add-long/2addr v4, v6

    .line 181
    :goto_73
    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    goto :goto_59

    .line 175
    :cond_78
    cmp-long v3, v12, v16

    if-lez v3, :cond_81

    .line 168
    const-wide/16 v4, 0x0

    .line 176
    add-long v4, v4, v18

    goto :goto_73

    .line 168
    :cond_81
    const-wide/16 v4, 0x0

    .line 178
    add-long v4, v4, v16

    goto :goto_73
.end method


# virtual methods
.method isNight()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 81
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->isStateValid()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 83
    iget-boolean v0, v1, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return v0

    .line 87
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_18

    .line 89
    invoke-direct {p0, v2}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 90
    iget-boolean v0, v1, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return v0

    .line 93
    :cond_18
    const-string/jumbo v1, "TwilightManager"

    const-string/jumbo v2, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 100
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 101
    const/4 v2, 0x6

    if-lt v1, v2, :cond_32

    const/16 v2, 0x16

    if-lt v1, v2, :cond_33

    :cond_32
    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method
