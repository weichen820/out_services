.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

.field private final mSpis:[Lcom/android/server/IpSecService$SpiRecord;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Landroid/net/IpSecConfig;[Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$UdpSocketRecord;)V
    .registers 12

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V

    .line 239
    iput-object p4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 240
    iput-object p5, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    .line 241
    iput-object p6, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    .line 243
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_11
    if-ge v0, v2, :cond_26

    aget v3, v1, v0

    .line 244
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/IpSecService$ManagedResource;->addReference()V

    .line 245
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/android/server/IpSecService$SpiRecord;->setOwnedByTransform()V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 248
    :cond_26
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    if-eqz v0, :cond_2f

    .line 249
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->addReference()V

    .line 251
    :cond_2f
    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/IpSecConfig;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public getSpiRecord(I)Lcom/android/server/IpSecService$SpiRecord;
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected releaseResources()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 264
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_7
    if-ge v7, v9, :cond_6c

    aget v2, v8, v7

    .line 265
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v5

    .line 267
    :try_start_13
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I

    .line 271
    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 272
    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 274
    :goto_2d
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 275
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 267
    :goto_3f
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    .line 264
    :goto_42
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    .line 273
    :cond_46
    const-string/jumbo v3, ""

    goto :goto_2d

    .line 276
    :cond_4a
    const-string/jumbo v4, ""
    :try_end_4d
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_4d} :catch_8a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_4e

    goto :goto_3f

    .line 280
    :catch_4e
    move-exception v0

    .line 281
    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete SA with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 285
    :cond_6c
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v1

    array-length v2, v1

    move v0, v6

    :goto_72
    if-ge v0, v2, :cond_80

    aget v3, v1, v0

    .line 286
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/android/server/IpSecService$ManagedResource;->removeReference()V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 289
    :cond_80
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    if-eqz v0, :cond_89

    .line 290
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->removeReference()V

    .line 292
    :cond_89
    return-void

    .line 278
    :catch_8a
    move-exception v0

    goto :goto_42
.end method
