.class Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/NotificationCompatSideChannelService;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-direct {p0}, Landroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 92
    invoke-static {}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v2

    .line 94
    :try_start_d
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 96
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 98
    return-void

    .line 95
    :catchall_16
    move-exception v0

    .line 96
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 95
    throw v0
.end method

.method public cancelAll(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 103
    invoke-static {}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v2

    .line 105
    :try_start_d
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 107
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 109
    return-void

    .line 106
    :catchall_16
    move-exception v0

    .line 107
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 106
    throw v0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 81
    invoke-static {}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v2

    .line 83
    :try_start_d
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 85
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 87
    return-void

    .line 84
    :catchall_16
    move-exception v0

    .line 85
    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 84
    throw v0
.end method
