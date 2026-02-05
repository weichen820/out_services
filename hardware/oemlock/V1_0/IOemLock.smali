.class public interface abstract Landroid/hardware/oemlock/V1_0/IOemLock;
.super Ljava/lang/Object;
.source "IOemLock.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;,
        Landroid/hardware/oemlock/V1_0/IOemLock$Stub;,
        Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;,
        Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;,
        Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.oemlock@1.0::IOemLock"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 7
    if-nez p0, :cond_4

    .line 8
    return-object v4

    .line 12
    :cond_4
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-interface {p0, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    .line 14
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/oemlock/V1_0/IOemLock;

    if-eqz v1, :cond_14

    .line 15
    check-cast v0, Landroid/hardware/oemlock/V1_0/IOemLock;

    return-object v0

    .line 18
    :cond_14
    new-instance v1, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    :try_start_19
    invoke-interface {v1}, Landroid/hardware/oemlock/V1_0/IOemLock;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    const-string/jumbo v3, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_33} :catch_37

    move-result v0

    if-eqz v0, :cond_21

    .line 23
    return-object v1

    .line 26
    :catch_37
    move-exception v0

    .line 29
    :cond_38
    return-object v4
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    goto :goto_3
.end method

.method public static getService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOemUnlockAllowedByDevice(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
