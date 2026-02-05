.class public Landroid/net/ip/IpManager$ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisioningConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x8ca0


# instance fields
.field mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mDiscoverSent:Z

.field mEnableIPv4:Z

.field mEnableIPv6:Z

.field mIPv6AddrGenMode:I

.field mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

.field mProvisioningTimeoutMs:I

.field public mRapidCommit:Z

.field mRequestedPreDhcpActionMs:I

.field mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field mUsingIpReachabilityMonitor:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 362
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 363
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 368
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 362
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 363
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 368
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 376
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 377
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 378
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 379
    iget v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 380
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    invoke-static {v0}, Landroid/net/ip/IpManager$InitialConfiguration;->copy(Landroid/net/ip/IpManager$InitialConfiguration;)Landroid/net/ip/IpManager$InitialConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 381
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 382
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 383
    iget v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 384
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    .line 385
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    .line 386
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$InitialConfiguration;->isValid()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 390
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, ", "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsingIpReachabilityMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRequestedPreDhcpActionMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInitialConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStaticIpConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mApfCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProvisioningTimeoutMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIPv6AddrGenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
