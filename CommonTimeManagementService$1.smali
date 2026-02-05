.class Lcom/android/server/CommonTimeManagementService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CommonTimeManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/CommonTimeManagementService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    .line 107
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap0(Lcom/android/server/CommonTimeManagementService;)V

    .line 119
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap0(Lcom/android/server/CommonTimeManagementService;)V

    .line 115
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap0(Lcom/android/server/CommonTimeManagementService;)V

    .line 123
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap0(Lcom/android/server/CommonTimeManagementService;)V

    .line 111
    return-void
.end method
