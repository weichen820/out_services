.class public Landroid/net/ip/IpManager$WaitForProvisioningCallback;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallback"
.end annotation


# instance fields
.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 3

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 177
    return-void

    .line 173
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 3

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    iput-object p1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 169
    return-void

    .line 165
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .registers 2

    .prologue
    .line 155
    monitor-enter p0

    .line 157
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_8
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    .line 159
    :goto_4
    :try_start_4
    iget-object v0, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a

    monitor-exit p0

    return-object v0

    .line 158
    :catch_8
    move-exception v0

    goto :goto_4

    .line 155
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
