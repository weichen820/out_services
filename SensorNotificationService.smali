.class public Lcom/android/server/SensorNotificationService;
.super Lcom/android/server/SystemService;
.source "SensorNotificationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DBG:Z = false

.field private static final KM_IN_M:J = 0x3e8L

.field private static final LOCATION_MIN_DISTANCE:J = 0x186a0L

.field private static final LOCATION_MIN_TIME:J = 0x1b7740L

.field private static final MILLIS_2010_1_1:J = 0x125ea667180L

.field private static final MINUTE_IN_MS:J = 0xea60L

.field private static final PROPERTY_USE_MOCKED_LOCATION:Ljava/lang/String; = "sensor.notification.use_mocked"

.field private static final TAG:Ljava/lang/String; = "SensorNotificationService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalGeomagneticFieldUpdateTime:J

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMetaSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 66
    iput-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private broadcastDynamicSensorChanged()V
    .registers 4

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 108
    return-void
.end method

.method private useMockedLocation()Z
    .registers 4

    .prologue
    .line 173
    const-string/jumbo v0, "false"

    const-string/jumbo v1, "sensor.notification.use_mocked"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 164
    return-void
.end method

.method public onBootPhase(I)V
    .registers 8

    .prologue
    .line 74
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 75
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 77
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_35

    .line 85
    :cond_1f
    :goto_1f
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_34

    .line 88
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 87
    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    .line 89
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_3e

    .line 101
    :cond_34
    :goto_34
    return-void

    .line 80
    :cond_35
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 81
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1f

    .line 92
    :cond_3e
    sget-boolean v0, Landroid/os/Build;->IS_CTA:Z

    if-nez v0, :cond_34

    .line 93
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    .line 94
    const-string/jumbo v1, "passive"

    .line 96
    const v4, 0x47c35000    # 100000.0f

    .line 95
    const-wide/32 v2, 0x1b7740

    move-object v5, p0

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_34
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 14

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v2, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1d

    .line 127
    return-void

    .line 131
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2c

    .line 132
    return-void

    .line 135
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 138
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->useMockedLocation()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eq v0, v1, :cond_43

    const-wide v0, 0x125ea667180L

    cmp-long v0, v4, v0

    if-gez v0, :cond_44

    .line 139
    :cond_43
    return-void

    .line 142
    :cond_44
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 143
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 144
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-float v3, v6

    .line 142
    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 151
    :try_start_58
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getFieldStrength()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 152
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v10

    double-to-float v2, v2

    .line 153
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getInclination()F

    move-result v0

    float-to-double v4, v0

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    double-to-float v0, v4

    .line 150
    invoke-static {v1, v2, v0}, Landroid/hardware/SensorAdditionalInfo;->createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_80

    .line 155
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_80} :catch_81

    .line 161
    :cond_80
    :goto_80
    return-void

    .line 158
    :catch_81
    move-exception v0

    .line 159
    const-string/jumbo v0, "SensorNotificationService"

    const-string/jumbo v1, "Invalid local geomagnetic field, ignore."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 170
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 168
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_9

    .line 113
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->broadcastDynamicSensorChanged()V

    .line 115
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 70
    const-class v0, Lcom/android/server/SensorNotificationService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 166
    return-void
.end method
