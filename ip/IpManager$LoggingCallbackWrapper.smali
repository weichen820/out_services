.class Landroid/net/ip/IpManager$LoggingCallbackWrapper;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingCallbackWrapper"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "INVOKE "


# instance fields
.field private mCallback:Landroid/net/ip/IpManager$Callback;

.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V
    .registers 3

    .prologue
    .line 201
    iput-object p1, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    .line 202
    iput-object p2, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    .line 203
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INVOKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 207
    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "installPacketFilter(byte["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLinkPropertiesChange({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .registers 4

    .prologue
    .line 221
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewDhcpResults({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onPostDhcpAction()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    .line 217
    const-string/jumbo v0, "onPostDhcpAction()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onPreDhcpAction()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    .line 212
    const-string/jumbo v0, "onPreDhcpAction()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProvisioningFailure({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 4

    .prologue
    .line 226
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProvisioningSuccess({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onQuit()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    .line 247
    const-string/jumbo v0, "onQuit()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onReachabilityLost(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReachabilityLost("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFallbackMulticastFilter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNeighborDiscoveryOffload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 263
    return-void
.end method
