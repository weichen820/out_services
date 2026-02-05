.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_addPrivateDnsServer:I = 0x8

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_getMetricsReportingLevel:I = 0xe

.field static final TRANSACTION_getResolverInfo:I = 0x7

.field static final TRANSACTION_interfaceAddAddress:I = 0xb

.field static final TRANSACTION_interfaceDelAddress:I = 0xc

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x11

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x10

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x13

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x12

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x14

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0x4

.field static final TRANSACTION_removePrivateDnsServer:I = 0x9

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x17

.field static final TRANSACTION_setMetricsReportingLevel:I = 0xf

.field static final TRANSACTION_setProcSysNet:I = 0xd

.field static final TRANSACTION_setResolverConfiguration:I = 0x6

.field static final TRANSACTION_socketDestroy:I = 0x5

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xa

.field static final TRANSACTION_wakeupAddInterface:I = 0x15

.field static final TRANSACTION_wakeupDelInterface:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_4

    .line 25
    return-object v0

    .line 27
    :cond_4
    const-string/jumbo v0, "android.net.INetd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/net/INetd;

    return-object v0

    .line 31
    :cond_14
    new-instance v0, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_360

    .line 396
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_8
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    return v2

    .line 48
    :sswitch_12
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v2

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v2, 0x1

    return v2

    .line 51
    :cond_2b
    const/4 v2, 0x0

    goto :goto_24

    .line 56
    :sswitch_2d
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    .line 62
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 63
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v2

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_59

    const/4 v2, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v2, 0x1

    return v2

    .line 60
    :cond_57
    const/4 v2, 0x0

    goto :goto_40

    .line 65
    :cond_59
    const/4 v2, 0x0

    goto :goto_50

    .line 70
    :sswitch_5b
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    .line 73
    :goto_6a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v2

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_7f

    const/4 v2, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v2, 0x1

    return v2

    .line 72
    :cond_7d
    const/4 v2, 0x0

    goto :goto_6a

    .line 75
    :cond_7f
    const/4 v2, 0x0

    goto :goto_76

    .line 80
    :sswitch_81
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v2, 0x1

    move v3, v2

    .line 84
    :goto_91
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 85
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/4 v2, 0x1

    return v2

    .line 82
    :cond_a5
    const/4 v2, 0x0

    move v3, v2

    goto :goto_91

    .line 91
    :sswitch_a8
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    sget-object v2, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 96
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v2, 0x1

    return v2

    .line 102
    :sswitch_c8
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 111
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v2, 0x1

    return v2

    .line 117
    :sswitch_ea
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    if-gez v2, :cond_130

    .line 123
    const/4 v4, 0x0

    .line 129
    :goto_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    if-gez v2, :cond_133

    .line 131
    const/4 v5, 0x0

    .line 137
    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    if-gez v2, :cond_136

    .line 139
    const/4 v6, 0x0

    .line 145
    :goto_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    if-gez v2, :cond_139

    .line 147
    const/4 v7, 0x0

    :goto_112
    move-object/from16 v2, p0

    .line 152
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    const/4 v2, 0x1

    return v2

    .line 126
    :cond_130
    new-array v4, v2, [Ljava/lang/String;

    goto :goto_fd

    .line 134
    :cond_133
    new-array v5, v2, [Ljava/lang/String;

    goto :goto_104

    .line 142
    :cond_136
    new-array v6, v2, [I

    goto :goto_10b

    .line 150
    :cond_139
    new-array v7, v2, [I

    goto :goto_112

    .line 162
    :sswitch_13c
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/INetd$Stub;->addPrivateDnsServer(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v2, 0x1

    return v2

    .line 177
    :sswitch_15e
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->removePrivateDnsServer(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v2, 0x1

    return v2

    .line 186
    :sswitch_174
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v2

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v2, :cond_18d

    const/4 v2, 0x1

    :goto_186
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v2, 0x1

    return v2

    .line 189
    :cond_18d
    const/4 v2, 0x0

    goto :goto_186

    .line 194
    :sswitch_18f
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v2, 0x1

    return v2

    .line 207
    :sswitch_1ad
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v2, 0x1

    return v2

    .line 220
    :sswitch_1cb
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 231
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v2, 0x1

    return v2

    .line 237
    :sswitch_1f1
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getMetricsReportingLevel()I

    move-result v2

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v2, 0x1

    return v2

    .line 245
    :sswitch_207
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->setMetricsReportingLevel(I)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v2, 0x1

    return v2

    .line 254
    :sswitch_21d
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v2, p0

    .line 265
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v2, 0x1

    return v2

    .line 272
    :sswitch_249
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v2, p0

    .line 305
    invoke-virtual/range {v2 .. v19}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v2, 0x1

    return v2

    .line 311
    :sswitch_29b
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v2, p0

    .line 322
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v2, 0x1

    return v2

    .line 328
    :sswitch_2c1
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v2, p0

    .line 341
    invoke-virtual/range {v2 .. v8}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v2, 0x1

    return v2

    .line 347
    :sswitch_2eb
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v2, 0x1

    return v2

    .line 356
    :sswitch_301
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v2, 0x1

    return v2

    .line 371
    :sswitch_323
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v2, 0x1

    return v2

    .line 386
    :sswitch_345
    const-string/jumbo v2, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 391
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v2, 0x1

    return v2

    .line 39
    nop

    :sswitch_data_360
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_81
        0x5 -> :sswitch_a8
        0x6 -> :sswitch_c8
        0x7 -> :sswitch_ea
        0x8 -> :sswitch_13c
        0x9 -> :sswitch_15e
        0xa -> :sswitch_174
        0xb -> :sswitch_18f
        0xc -> :sswitch_1ad
        0xd -> :sswitch_1cb
        0xe -> :sswitch_1f1
        0xf -> :sswitch_207
        0x10 -> :sswitch_21d
        0x11 -> :sswitch_249
        0x12 -> :sswitch_29b
        0x13 -> :sswitch_2c1
        0x14 -> :sswitch_2eb
        0x15 -> :sswitch_301
        0x16 -> :sswitch_323
        0x17 -> :sswitch_345
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
