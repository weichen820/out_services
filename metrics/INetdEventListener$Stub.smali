.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.metrics.INetdEventListener"

.field static final TRANSACTION_onConnectEvent:I = 0x2

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onWakeupEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 29
    return-object v0

    .line 31
    :cond_4
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/net/metrics/INetdEventListener;

    return-object v0

    .line 35
    :cond_14
    new-instance v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/metrics/INetdEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_7a

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_9
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v9

    .line 52
    :sswitch_10
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v8}, Landroid/net/metrics/INetdEventListener$Stub;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    .line 70
    return v9

    .line 74
    :sswitch_3b
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroid/net/metrics/INetdEventListener$Stub;->onConnectEvent(IIILjava/lang/String;II)V

    .line 88
    return v9

    .line 92
    :sswitch_5e
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/net/metrics/INetdEventListener$Stub;->onWakeupEvent(Ljava/lang/String;IIJ)V

    .line 102
    return v9

    .line 43
    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_5e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
