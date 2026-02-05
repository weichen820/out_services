.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3

    .prologue
    .line 778
    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDaemonConnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 756
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 761
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 762
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 774
    :goto_20
    return-void

    .line 766
    :cond_21
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get2(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v5, 0x5

    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 783
    const-string/jumbo v1, "Invalid event from daemon (%s)"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 784
    sparse-switch p1, :sswitch_data_236

    .line 952
    :goto_14
    const/4 v0, 0x0

    return v0

    .line 793
    :sswitch_16
    array-length v1, p3

    if-lt v1, v0, :cond_26

    aget-object v1, p3, v8

    const-string/jumbo v2, "Iface"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 794
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_2c
    aget-object v1, p3, v9

    const-string/jumbo v2, "added"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 797
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, p3, v7

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 798
    return v8

    .line 799
    :cond_3f
    aget-object v1, p3, v9

    const-string/jumbo v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 800
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, p3, v7

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 801
    return v8

    .line 802
    :cond_52
    aget-object v1, p3, v9

    const-string/jumbo v2, "changed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    array-length v1, p3

    if-ne v1, v5, :cond_71

    .line 803
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v2, p3, v7

    aget-object v0, p3, v0

    const-string/jumbo v3, "up"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/android/server/NetworkManagementService;->-wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 804
    return v8

    .line 805
    :cond_71
    aget-object v1, p3, v9

    const-string/jumbo v2, "linkstate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    array-length v1, p3

    if-ne v1, v5, :cond_90

    .line 806
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v2, p3, v7

    aget-object v0, p3, v0

    const-string/jumbo v3, "up"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 807
    return v8

    .line 809
    :cond_90
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :sswitch_96
    array-length v1, p3

    if-lt v1, v5, :cond_a6

    aget-object v1, p3, v8

    const-string/jumbo v2, "limit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_ac

    .line 817
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_ac
    aget-object v1, p3, v9

    const-string/jumbo v2, "alert"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 820
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v2, p3, v7

    aget-object v0, p3, v0

    invoke-static {v1, v2, v0}, Lcom/android/server/NetworkManagementService;->-wrap11(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    return v8

    .line 823
    :cond_c1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :sswitch_c7
    array-length v1, p3

    if-lt v1, v0, :cond_d7

    aget-object v0, p3, v8

    const-string/jumbo v1, "IfaceClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_dd

    .line 831
    :cond_d7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_dd
    const-wide/16 v2, 0x0

    .line 834
    const/4 v0, -0x1

    .line 835
    array-length v1, p3

    if-lt v1, v5, :cond_114

    .line 837
    const/4 v1, 0x4

    :try_start_e4
    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 838
    array-length v1, p3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_f5

    .line 839
    const/4 v1, 0x5

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_f4} :catch_110

    move-result v0

    :cond_f5
    move v6, v0

    move-wide v4, v2

    .line 845
    :goto_f7
    aget-object v0, p3, v9

    const-string/jumbo v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 846
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v2, p3, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 847
    if-eqz v0, :cond_11b

    move v3, v7

    .line 849
    :goto_10b
    const/4 v7, 0x0

    .line 846
    invoke-static/range {v1 .. v7}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 850
    return v8

    .line 841
    :catch_110
    move-exception v1

    move v6, v0

    move-wide v4, v2

    goto :goto_f7

    .line 843
    :cond_114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    move v6, v0

    move-wide v4, v2

    goto :goto_f7

    :cond_11b
    move v3, v8

    .line 848
    goto :goto_10b

    .line 858
    :sswitch_11d
    array-length v1, p3

    const/4 v2, 0x7

    if-lt v1, v2, :cond_12e

    aget-object v1, p3, v8

    const-string/jumbo v2, "Address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_134

    .line 859
    :cond_12e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_134
    aget-object v0, p3, v0

    .line 865
    const/4 v1, 0x5

    :try_start_137
    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 866
    const/4 v2, 0x6

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 867
    new-instance v3, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v3, v5, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_14c
    .catch Ljava/lang/NumberFormatException; {:try_start_137 .. :try_end_14c} :catch_164
    .catch Ljava/lang/IllegalArgumentException; {:try_start_137 .. :try_end_14c} :catch_15d

    .line 874
    aget-object v1, p3, v9

    const-string/jumbo v2, "updated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 875
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, v0, v3}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 879
    :goto_15c
    return v8

    .line 870
    :catch_15d
    move-exception v0

    .line 871
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 868
    :catch_164
    move-exception v0

    .line 869
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 877
    :cond_16b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, v0, v3}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_15c

    .line 888
    :sswitch_171
    array-length v0, p3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a2

    .line 889
    aget-object v0, p3, v8

    const-string/jumbo v1, "DnsInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 888
    if-eqz v0, :cond_1a2

    .line 890
    aget-object v0, p3, v9

    const-string/jumbo v1, "servers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 888
    if-eqz v0, :cond_1a2

    .line 892
    const/4 v0, 0x4

    :try_start_18c
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_191
    .catch Ljava/lang/NumberFormatException; {:try_start_18c .. :try_end_191} :catch_1a3

    move-result-wide v0

    .line 896
    aget-object v2, p3, v5

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 897
    iget-object v3, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v4, p3, v7

    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 899
    :cond_1a2
    return v8

    .line 893
    :catch_1a3
    move-exception v0

    .line 894
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :sswitch_1aa
    aget-object v1, p3, v8

    const-string/jumbo v2, "Route"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    array-length v1, p3

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1bf

    .line 907
    :cond_1b9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_1bf
    const/4 v2, 0x0

    .line 911
    const/4 v1, 0x0

    move-object v3, v2

    move-object v2, v1

    move v1, v8

    .line 913
    :goto_1c4
    add-int/lit8 v5, v0, 0x1

    array-length v6, p3

    if-ge v5, v6, :cond_1f7

    if-eqz v1, :cond_1f7

    .line 914
    aget-object v5, p3, v0

    const-string/jumbo v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e1

    .line 915
    if-nez v2, :cond_1df

    .line 916
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    .line 913
    :goto_1dc
    add-int/lit8 v0, v0, 0x2

    goto :goto_1c4

    .line 918
    :cond_1df
    const/4 v1, 0x0

    goto :goto_1dc

    .line 920
    :cond_1e1
    aget-object v5, p3, v0

    const-string/jumbo v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f5

    .line 921
    if-nez v3, :cond_1f3

    .line 922
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p3, v3

    goto :goto_1dc

    .line 924
    :cond_1f3
    const/4 v1, 0x0

    goto :goto_1dc

    .line 927
    :cond_1f5
    const/4 v1, 0x0

    goto :goto_1dc

    .line 930
    :cond_1f7
    if-eqz v1, :cond_217

    .line 933
    const/4 v0, 0x0

    .line 934
    if-eqz v3, :cond_200

    :try_start_1fc
    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 935
    :cond_200
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v3, v5}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-static {v0, v2, v1}, Lcom/android/server/NetworkManagementService;->-wrap12(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_215
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fc .. :try_end_215} :catch_216

    .line 937
    return v8

    .line 938
    :catch_216
    move-exception v0

    .line 940
    :cond_217
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :sswitch_21d
    aget-object v0, p3, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 944
    aget-object v1, p3, v9

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 946
    :try_start_229
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_230
    .catch Landroid/os/RemoteException; {:try_start_229 .. :try_end_230} :catch_232

    goto/16 :goto_14

    .line 947
    :catch_232
    move-exception v0

    goto/16 :goto_14

    .line 784
    nop

    :sswitch_data_236
    .sparse-switch
        0x258 -> :sswitch_16
        0x259 -> :sswitch_96
        0x265 -> :sswitch_c7
        0x266 -> :sswitch_11d
        0x267 -> :sswitch_171
        0x268 -> :sswitch_1aa
        0x269 -> :sswitch_21d
    .end sparse-switch
.end method
