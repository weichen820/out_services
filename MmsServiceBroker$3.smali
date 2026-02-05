.class Lcom/android/server/MmsServiceBroker$3;
.super Ljava/lang/Object;
.source "MmsServiceBroker.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private returnPendingIntentWithError(Landroid/app/PendingIntent;)V
    .registers 5

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_b} :catch_c

    .line 215
    :goto_b
    return-void

    .line 212
    :catch_c
    move-exception v0

    .line 213
    const-string/jumbo v1, "MmsServiceBroker"

    const-string/jumbo v2, "Failed to return pending intent result"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p6}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    .line 138
    return-void
.end method

.method public getAutoPersisting()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierConfigValues(I)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p6}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    .line 131
    return-void
.end method

.method public sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p5}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    .line 197
    return-void
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method
