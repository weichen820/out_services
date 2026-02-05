.class Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    return-object v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 169
    :try_start_4
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-void

    .line 178
    :catchall_28
    move-exception v0

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v0
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    :try_start_4
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2e

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    return-void

    .line 151
    :catchall_2e
    move-exception v0

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw v0
.end method

.method public onWakeupEvent(Ljava/lang/String;IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 194
    :try_start_4
    const-string/jumbo v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_22

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    return-void

    .line 201
    :catchall_22
    move-exception v0

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    throw v0
.end method
