.class Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 3743
    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3744
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3745
    iput-object p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3746
    iput p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 3747
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3825
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3826
    return-void
.end method

.method public handleExecute()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 3751
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap16(Lcom/android/server/StorageManagerService;)V

    .line 3752
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap17(Lcom/android/server/StorageManagerService;)V

    .line 3754
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v0

    .line 3756
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v3, v0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    invoke-static {v2, v3, v4}, Lcom/android/server/StorageManagerService;->-wrap2(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 3757
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Denied attempt to mount OBB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3758
    const-string/jumbo v3, " which is owned by "

    .line 3757
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3758
    iget-object v0, v0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    .line 3757
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3760
    return-void

    .line 3764
    :cond_4d
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 3765
    :try_start_54
    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-get12(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v4, v4, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_87

    move-result v3

    monitor-exit v2

    .line 3767
    if-eqz v3, :cond_8a

    .line 3768
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3770
    return-void

    .line 3764
    :catchall_87
    move-exception v0

    monitor-exit v2

    throw v0

    .line 3774
    :cond_8a
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v2, :cond_d6

    .line 3775
    const-string/jumbo v0, "none"

    .line 3798
    :goto_91
    :try_start_91
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string/jumbo v3, "obb"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "mount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    .line 3799
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v0, v0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v4, v5

    .line 3798
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_c0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_91 .. :try_end_c0} :catch_11e

    :cond_c0
    move v0, v1

    .line 3807
    :goto_c1
    if-nez v0, :cond_12c

    .line 3811
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 3812
    :try_start_ca
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-static {v0, v2}, Lcom/android/server/StorageManagerService;->-wrap4(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_129

    monitor-exit v1

    .line 3815
    invoke-virtual {p0, v7}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3821
    :goto_d5
    return-void

    .line 3778
    :cond_d6
    :try_start_d6
    const-string/jumbo v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 3780
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v0, v0, Landroid/content/res/ObbInfo;->salt:[B

    .line 3781
    const/16 v5, 0x400

    const/16 v6, 0x80

    .line 3780
    invoke-direct {v3, v4, v0, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3782
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 3783
    new-instance v2, Ljava/math/BigInteger;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 3784
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_100
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d6 .. :try_end_100} :catch_110
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_d6 .. :try_end_100} :catch_102

    move-result-object v0

    goto :goto_91

    .line 3789
    :catch_102
    move-exception v0

    .line 3790
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3791
    invoke-virtual {p0, v8}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3792
    return-void

    .line 3785
    :catch_110
    move-exception v0

    .line 3786
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "Could not load PBKDF2 algorithm"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3787
    invoke-virtual {p0, v8}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3788
    return-void

    .line 3800
    :catch_11e
    move-exception v0

    .line 3801
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3802
    const/16 v2, 0x195

    if-eq v0, v2, :cond_c0

    .line 3803
    const/4 v0, -0x1

    goto :goto_c1

    .line 3811
    :catchall_129
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3817
    :cond_12c
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t mount OBB file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_d5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3831
    const-string/jumbo v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3832
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3833
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
