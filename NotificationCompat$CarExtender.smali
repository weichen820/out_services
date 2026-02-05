.class public final Landroid/support/v4/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4133
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 4139
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 4146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4133
    iput v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 4147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_e

    .line 4148
    return-void

    .line 4151
    :cond_e
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_39

    move-object v1, v0

    .line 4153
    :goto_15
    if-eqz v1, :cond_38

    .line 4154
    const-string/jumbo v0, "large_icon"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 4155
    const-string/jumbo v0, "app_color"

    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 4157
    const-string/jumbo v0, "car_conversation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4158
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat$CarExtender;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 4160
    :cond_38
    return-void

    .line 4152
    :cond_39
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.car.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    goto :goto_15
.end method

.method private static getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;
    .registers 8
    .param p0    # Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4215
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4217
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1b

    .line 4218
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 4220
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Landroid/os/Parcelable;

    .line 4221
    :goto_22
    array-length v4, v3

    if-ge v1, v4, :cond_41

    .line 4222
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4223
    const-string/jumbo v5, "text"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    const-string/jumbo v5, "author"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    aput-object v4, v3, v1

    .line 4221
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4227
    :cond_41
    const-string/jumbo v0, "messages"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4228
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    .line 4229
    if-eqz v0, :cond_80

    .line 4231
    new-instance v1, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4231
    invoke-virtual {v1, v3}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 4233
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 4231
    invoke-virtual {v1, v3}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 4234
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v3

    .line 4231
    invoke-virtual {v1, v3}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 4235
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4231
    invoke-virtual {v1, v0}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    .line 4237
    const-string/jumbo v1, "remote_input"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4239
    :cond_80
    const-string/jumbo v0, "on_reply"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4240
    const-string/jumbo v0, "on_read"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4241
    const-string/jumbo v0, "participants"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4242
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getLatestTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4243
    return-object v2
.end method

.method private static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    .registers 13
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 4164
    if-nez p0, :cond_6

    .line 4165
    return-object v6

    .line 4167
    :cond_6
    const-string/jumbo v0, "messages"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 4169
    if-eqz v5, :cond_91

    .line 4170
    array-length v0, v5

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    .line 4172
    :goto_13
    array-length v0, v3

    if-ge v1, v0, :cond_8f

    .line 4173
    aget-object v0, v5, v1

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_4a

    .line 4183
    :cond_1c
    :goto_1c
    if-eqz v2, :cond_5f

    move-object v10, v3

    .line 4190
    :goto_1f
    const-string/jumbo v0, "on_read"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 4191
    const-string/jumbo v0, "on_reply"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 4193
    const-string/jumbo v0, "remote_input"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/RemoteInput;

    .line 4195
    const-string/jumbo v0, "participants"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 4196
    if-eqz v11, :cond_49

    array-length v0, v11

    if-eq v0, v4, :cond_60

    .line 4197
    :cond_49
    return-object v6

    .line 4177
    :cond_4a
    aget-object v0, v5, v1

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 4178
    aget-object v0, v3, v1

    if-eqz v0, :cond_1c

    .line 4172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 4186
    :cond_5f
    return-object v6

    .line 4200
    :cond_60
    if-eqz v5, :cond_8d

    .line 4201
    new-instance v0, Landroid/support/v4/app/RemoteInput;

    invoke-virtual {v5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    .line 4202
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4203
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 4204
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    .line 4205
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 4201
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    move-object v2, v0

    .line 4209
    :goto_7c
    new-instance v0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 4210
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, v10

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    .line 4209
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0

    :cond_8d
    move-object v2, v6

    .line 4207
    goto :goto_7c

    :cond_8f
    move v2, v4

    goto :goto_1c

    :cond_91
    move-object v10, v6

    goto :goto_1f
.end method


# virtual methods
.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 5

    .prologue
    .line 4253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 4254
    return-object p1

    .line 4257
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4259
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_18

    .line 4260
    const-string/jumbo v1, "large_icon"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4262
    :cond_18
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    if-eqz v1, :cond_24

    .line 4263
    const-string/jumbo v1, "app_color"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4266
    :cond_24
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v1, :cond_34

    .line 4267
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat$CarExtender;->getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;

    move-result-object v1

    .line 4268
    const-string/jumbo v2, "car_conversation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4271
    :cond_34
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4272
    return-object p1
.end method

.method public getColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 4295
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 4319
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    .registers 2

    .prologue
    .line 4338
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 4284
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 4285
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .registers 2

    .prologue
    .line 4308
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 4309
    return-object p0
.end method

.method public setUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .registers 2

    .prologue
    .line 4329
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 4330
    return-object p0
.end method
