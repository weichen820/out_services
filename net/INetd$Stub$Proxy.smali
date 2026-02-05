.class Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
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
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 404
    return-void
.end method


# virtual methods
.method public addPrivateDnsServer(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 677
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 683
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 686
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    return-void

    .line 685
    :catchall_2c
    move-exception v0

    .line 686
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 488
    :try_start_a
    const-string/jumbo v2, "android.net.INetd"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 489
    if-eqz p1, :cond_2d

    move v2, v0

    :goto_13
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 491
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 492
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v2

    if-eqz v2, :cond_2f

    .line 495
    :goto_26
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 498
    return v0

    :cond_2d
    move v2, v1

    .line 489
    goto :goto_13

    :cond_2f
    move v0, v1

    .line 492
    goto :goto_26

    .line 494
    :catchall_31
    move-exception v0

    .line 495
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 494
    throw v0
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 452
    :try_start_a
    const-string/jumbo v2, "android.net.INetd"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    if-eqz p2, :cond_33

    move v2, v0

    :goto_16
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 456
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 457
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 458
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_37

    move-result v2

    if-eqz v2, :cond_35

    .line 461
    :goto_2c
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 464
    return v0

    :cond_33
    move v2, v1

    .line 454
    goto :goto_16

    :cond_35
    move v0, v1

    .line 458
    goto :goto_2c

    .line 460
    :catchall_37
    move-exception v0

    .line 461
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 460
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    const-string/jumbo v0, "android.net.INetd"

    return-object v0
.end method

.method public getMetricsReportingLevel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 806
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 808
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 809
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    move-result v0

    .line 812
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 815
    return v0

    .line 811
    :catchall_24
    move-exception v0

    .line 812
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    throw v0
.end method

.method public getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 616
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    if-nez p2, :cond_46

    .line 619
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    :goto_17
    if-nez p3, :cond_53

    .line 625
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    :goto_1d
    if-nez p4, :cond_58

    .line 631
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    :goto_23
    if-nez p5, :cond_5d

    .line 637
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    :goto_29
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 643
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 644
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 645
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->readIntArray([I)V

    .line 647
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_4b

    .line 650
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    return-void

    .line 622
    :cond_46
    :try_start_46
    array-length v0, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4b

    goto :goto_17

    .line 649
    :catchall_4b
    move-exception v0

    .line 650
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    throw v0

    .line 628
    :cond_53
    :try_start_53
    array-length v0, p3

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 634
    :cond_58
    array-length v0, p4

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 640
    :cond_5d
    array-length v0, p5

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_4b

    goto :goto_29
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 752
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 757
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 760
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    return-void

    .line 759
    :catchall_29
    move-exception v0

    .line 760
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    throw v0
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 769
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 774
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 777
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    return-void

    .line 776
    :catchall_29
    move-exception v0

    .line 777
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v0
.end method

.method public ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 880
    :try_start_8
    const-string/jumbo v1, "android.net.INetd"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 887
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 890
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 893
    move/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    move/from16 v0, p15

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    move/from16 v0, p16

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget-object v1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 898
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_60

    .line 901
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 904
    return-void

    .line 900
    :catchall_60
    move-exception v1

    .line 901
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 900
    throw v1
.end method

.method public ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 838
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 845
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 846
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    move-result v0

    .line 849
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    return v0

    .line 848
    :catchall_33
    move-exception v0

    .line 849
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    throw v0
.end method

.method public ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 948
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 950
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 956
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    return-void

    .line 958
    :catchall_32
    move-exception v0

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 958
    throw v0
.end method

.method public ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 919
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 926
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 929
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 932
    return-void

    .line 928
    :catchall_2f
    move-exception v0

    .line 929
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    throw v0
.end method

.method public ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 974
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 976
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 977
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 980
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 983
    return-void

    .line 979
    :catchall_23
    move-exception v0

    .line 980
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw v0
.end method

.method public isAlive()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 422
    :try_start_a
    const-string/jumbo v4, "android.net.INetd"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 424
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 425
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_29

    move-result v4

    if-eqz v4, :cond_27

    .line 428
    :goto_20
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 431
    return v0

    :cond_27
    move v0, v1

    .line 425
    goto :goto_20

    .line 427
    :catchall_29
    move-exception v0

    .line 428
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 427
    throw v0
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 526
    :try_start_9
    const-string/jumbo v3, "android.net.INetd"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 529
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 530
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2a

    .line 533
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    return-void

    .line 532
    :catchall_2a
    move-exception v0

    .line 533
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    throw v0
.end method

.method public removePrivateDnsServer(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 702
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 705
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 708
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    return-void

    .line 707
    :catchall_23
    move-exception v0

    .line 708
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 707
    throw v0
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1043
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1047
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 1050
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    return-void

    .line 1049
    :catchall_26
    move-exception v0

    .line 1050
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1049
    throw v0
.end method

.method public setMetricsReportingLevel(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 822
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 825
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 828
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    return-void

    .line 827
    :catchall_23
    move-exception v0

    .line 828
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v0
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 786
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 793
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 796
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 799
    return-void

    .line 795
    :catchall_2f
    move-exception v0

    .line 796
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 795
    throw v0
.end method

.method public setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 574
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 578
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 579
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 580
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 583
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    return-void

    .line 582
    :catchall_2b
    move-exception v0

    .line 583
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw v0
.end method

.method public socketDestroy([Landroid/net/UidRange;[I)V
    .registers 8
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
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 547
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 548
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 549
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 552
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    return-void

    .line 551
    :catchall_26
    move-exception v0

    .line 552
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    throw v0
.end method

.method public tetherApplyDnsInterfaces()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 726
    :try_start_9
    const-string/jumbo v3, "android.net.INetd"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 728
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 729
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_28

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    .line 732
    :cond_21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 735
    return v0

    .line 731
    :catchall_28
    move-exception v0

    .line 732
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v0
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 996
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1002
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 1005
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    return-void

    .line 1004
    :catchall_2c
    move-exception v0

    .line 1005
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    throw v0
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1020
    :try_start_8
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1026
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 1029
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1032
    return-void

    .line 1028
    :catchall_2c
    move-exception v0

    .line 1029
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw v0
.end method
