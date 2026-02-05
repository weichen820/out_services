.class public Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager$ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 298
    return-void
.end method


# virtual methods
.method public build()Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 3

    .prologue
    .line 357
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 338
    return-object p0
.end method

.method public withIPv6AddrGenModeEUI64()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 348
    return-object p0
.end method

.method public withIPv6AddrGenModeStablePrivacy()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 353
    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/ip/IpManager$InitialConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 328
    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const v1, 0x8ca0

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 318
    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 323
    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 343
    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 333
    return-object p0
.end method

.method public withoutIPv4()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 303
    return-object p0
.end method

.method public withoutIPv6()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 308
    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 313
    return-object p0
.end method
