.class Landroid/os/IInstalld$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld$Stub;
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
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 531
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 642
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 648
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 649
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    .line 652
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    return-void

    .line 651
    :catchall_2e
    move-exception v0

    .line 652
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v0
.end method

.method public clearAppProfiles(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 902
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 905
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    return-void

    .line 907
    :catchall_23
    move-exception v0

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    throw v0
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 883
    :try_start_9
    const-string/jumbo v3, "android.os.IInstalld"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 888
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 889
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_31

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v0, 0x1

    .line 892
    :cond_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 895
    return v0

    .line 891
    :catchall_31
    move-exception v0

    .line 892
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    throw v0
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 581
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 590
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 591
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_38

    move-result-wide v4

    .line 594
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    return-wide v4

    .line 593
    :catchall_38
    move-exception v0

    .line 594
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw v0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1030
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1034
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 1037
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    return-void

    .line 1036
    :catchall_26
    move-exception v0

    .line 1037
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    throw v0
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 545
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 554
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    return-void

    .line 553
    :catchall_2b
    move-exception v0

    .line 554
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw v0
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1080
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1085
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 1088
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    return-void

    .line 1087
    :catchall_29
    move-exception v0

    .line 1088
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1087
    throw v0
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 661
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 667
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 668
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    .line 671
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    return-void

    .line 670
    :catchall_2e
    move-exception v0

    .line 671
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v0
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 917
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 920
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 923
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 926
    return-void

    .line 922
    :catchall_23
    move-exception v0

    .line 923
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    throw v0
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 563
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 568
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 571
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    return-void

    .line 570
    :catchall_28
    move-exception v0

    .line 571
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    throw v0
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 801
    :try_start_8
    const-string/jumbo v1, "android.os.IInstalld"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    if-eqz p12, :cond_4b

    const/4 v1, 0x1

    :goto_36
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-object v1, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 815
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_4d

    .line 818
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 821
    return-void

    .line 813
    :cond_4b
    const/4 v1, 0x0

    goto :goto_36

    .line 817
    :catchall_4d
    move-exception v1

    .line 818
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 817
    throw v1
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 863
    :try_start_9
    const-string/jumbo v3, "android.os.IInstalld"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget-object v3, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 868
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 869
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_31

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v0, 0x1

    .line 872
    :cond_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    return v0

    .line 871
    :catchall_31
    move-exception v0

    .line 872
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    throw v0
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 680
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 684
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 687
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    return-void

    .line 686
    :catchall_26
    move-exception v0

    .line 687
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v0
.end method

.method public freeCache(Ljava/lang/String;JJI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 994
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 997
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 998
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1000
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 1003
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    return-void

    .line 1002
    :catchall_2c
    move-exception v0

    .line 1003
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    throw v0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 697
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 704
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 706
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 707
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_39

    move-result-object v0

    .line 710
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 713
    return-object v0

    .line 709
    :catchall_39
    move-exception v0

    .line 710
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    throw v0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 742
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 747
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 748
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 749
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    move-result-object v0

    .line 752
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 755
    return-object v0

    .line 751
    :catchall_30
    move-exception v0

    .line 752
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 538
    const-string/jumbo v0, "android.os.IInstalld"

    return-object v0
.end method

.method public getUserSize(Ljava/lang/String;II[I)[J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 721
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 726
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 727
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 728
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    move-result-object v0

    .line 731
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-object v0

    .line 730
    :catchall_30
    move-exception v0

    .line 731
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw v0
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 932
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 937
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 940
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    return-void

    .line 939
    :catchall_29
    move-exception v0

    .line 940
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    throw v0
.end method

.method public invalidateMounts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1120
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1122
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_20

    .line 1125
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1128
    return-void

    .line 1124
    :catchall_20
    move-exception v0

    .line 1125
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    throw v0
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1135
    :try_start_9
    const-string/jumbo v3, "android.os.IInstalld"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1137
    iget-object v3, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1138
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1139
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_2b

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    .line 1142
    :cond_24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    return v0

    .line 1141
    :catchall_2b
    move-exception v0

    .line 1142
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1141
    throw v0
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1046
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1051
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 1054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1057
    return-void

    .line 1053
    :catchall_29
    move-exception v0

    .line 1054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    throw v0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1012
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1018
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 1021
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    return-void

    .line 1020
    :catchall_2c
    move-exception v0

    .line 1021
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1020
    throw v0
.end method

.method public markBootComplete(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 979
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 982
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 985
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    return-void

    .line 984
    :catchall_23
    move-exception v0

    .line 985
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    throw v0
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 844
    :try_start_9
    const-string/jumbo v3, "android.os.IInstalld"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 848
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 849
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2e

    move-result v3

    if-eqz v3, :cond_27

    const/4 v0, 0x1

    .line 852
    :cond_27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 855
    return v0

    .line 851
    :catchall_2e
    move-exception v0

    .line 852
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    throw v0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 624
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 630
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 633
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 636
    return-void

    .line 632
    :catchall_2b
    move-exception v0

    .line 633
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 632
    throw v0
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1063
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1068
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 1071
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    return-void

    .line 1070
    :catchall_29
    move-exception v0

    .line 1071
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1070
    throw v0
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 780
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 789
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    .line 792
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 795
    return-void

    .line 791
    :catchall_35
    move-exception v0

    .line 792
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 791
    throw v0
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1098
    :try_start_9
    const-string/jumbo v3, "android.os.IInstalld"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object v3, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1106
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1107
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_3a

    move-result v3

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    .line 1110
    :cond_33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    return v0

    .line 1109
    :catchall_3a
    move-exception v0

    .line 1110
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1109
    throw v0
.end method

.method public removeIdmap(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 949
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 952
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 955
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 958
    return-void

    .line 954
    :catchall_23
    move-exception v0

    .line 955
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    throw v0
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 604
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 615
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 618
    return-void

    .line 614
    :catchall_31
    move-exception v0

    .line 615
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    throw v0
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 964
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 967
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 970
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    return-void

    .line 969
    :catchall_23
    move-exception v0

    .line 970
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    throw v0
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 827
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 831
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 834
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    return-void

    .line 833
    :catchall_26
    move-exception v0

    .line 834
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 833
    throw v0
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 762
    :try_start_8
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 767
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 768
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 771
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    return-void

    .line 770
    :catchall_2c
    move-exception v0

    .line 771
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    throw v0
.end method
