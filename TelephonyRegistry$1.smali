.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 249
    :cond_5
    :goto_5
    return-void

    .line 218
    :pswitch_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 219
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_5

    .line 220
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 221
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->-get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v3

    aget-object v3, v3, v0

    .line 220
    invoke-virtual {v2, v0, v3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 226
    :pswitch_21
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 237
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 238
    :try_start_32
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 239
    iget v5, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3c

    .line 240
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5, v0, v1}, Lcom/android/server/TelephonyRegistry;->-wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_55

    goto :goto_3c

    .line 237
    :catchall_55
    move-exception v0

    monitor-exit v3

    throw v0

    .line 243
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-wrap2(Lcom/android/server/TelephonyRegistry;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_55

    monitor-exit v3

    .line 245
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0, v2}, Lcom/android/server/TelephonyRegistry;->-set1(Lcom/android/server/TelephonyRegistry;I)I

    .line 246
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0, v1}, Lcom/android/server/TelephonyRegistry;->-set0(Lcom/android/server/TelephonyRegistry;I)I

    goto :goto_5

    .line 215
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_21
    .end packed-switch
.end method
