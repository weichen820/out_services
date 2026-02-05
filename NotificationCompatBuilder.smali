.class Landroid/support/v4/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 11

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 61
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_f8

    .line 63
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 67
    :goto_2a
    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 68
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 69
    iget v4, v3, Landroid/app/Notification;->icon:I

    iget v5, v3, Landroid/app/Notification;->iconLevel:I

    .line 68
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 70
    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 71
    iget-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 68
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 72
    iget-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v5, v3, Landroid/app/Notification;->audioStreamType:I

    .line 68
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 73
    iget-object v4, v3, Landroid/app/Notification;->vibrate:[J

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 74
    iget v4, v3, Landroid/app/Notification;->ledARGB:I

    iget v5, v3, Landroid/app/Notification;->ledOnMS:I

    iget v6, v3, Landroid/app/Notification;->ledOffMS:I

    .line 68
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 75
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_103

    move v0, v1

    .line 68
    :goto_69
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 76
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_106

    move v0, v1

    .line 68
    :goto_74
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 77
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_109

    move v0, v1

    .line 68
    :goto_7f
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 78
    iget v4, v3, Landroid/app/Notification;->defaults:I

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 79
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 80
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 81
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 82
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 83
    iget-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 84
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 85
    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_b0

    move v2, v1

    .line 68
    :cond_b0
    invoke-virtual {v0, v4, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 86
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 87
    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    .line 68
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 88
    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    iget v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    iget-boolean v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 68
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_157

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 91
    iget-boolean v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 92
    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 94
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 95
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)V

    goto :goto_e8

    .line 65
    :cond_f8
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_2a

    :cond_103
    move v0, v2

    .line 75
    goto/16 :goto_69

    :cond_106
    move v0, v2

    .line 76
    goto/16 :goto_74

    :cond_109
    move v0, v2

    .line 77
    goto/16 :goto_7f

    .line 98
    :cond_10c
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_117

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 101
    :cond_117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_14f

    .line 102
    iget-boolean v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    if-eqz v0, :cond_127

    .line 103
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.localOnly"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    :cond_127
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_141

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.groupKey"

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v0, :cond_1e4

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.isGroupSummary"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    :cond_141
    :goto_141
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    if-eqz v0, :cond_14f

    .line 115
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.sortKey"

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_14f
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 120
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 122
    :cond_157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_18e

    .line 123
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_18e

    .line 126
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    if-eqz v0, :cond_18e

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18e

    .line 127
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.people"

    .line 128
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    :cond_18e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1af

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 134
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 135
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 136
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 138
    iget v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 140
    :cond_1af
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_1f2

    .line 141
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 142
    iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 143
    iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 144
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 146
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_1d2

    .line 110
    :cond_1e4
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 111
    const-string/jumbo v2, "android.support.useSideChannel"

    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_141

    .line 149
    :cond_1ee
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 151
    :cond_1f2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_226

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 153
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 154
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_210

    .line 155
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 157
    :cond_210
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_21b

    .line 158
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 160
    :cond_21b
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_226

    .line 161
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 164
    :cond_226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_250

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 166
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 167
    iget-wide v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mTimeout:J

    .line 165
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 168
    iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 169
    iget-boolean v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v0, :cond_250

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mColorized:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 173
    :cond_250
    return-void
.end method

.method private addAction(Landroid/support/v4/app/NotificationCompat$Action;)V
    .registers 7

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_6a

    .line 221
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 222
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 221
    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 223
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 225
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/support/v4/app/RemoteInput;->fromCompat([Landroid/support/v4/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    :goto_27
    if-ge v0, v3, :cond_31

    aget-object v4, v2, v0

    .line 226
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 230
    :cond_31
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 235
    :goto_40
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 236
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 235
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_57

    .line 238
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 240
    :cond_57
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 241
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 246
    :cond_63
    :goto_63
    return-void

    .line 233
    :cond_64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_40

    .line 242
    :cond_6a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_63

    .line 243
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 244
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v1

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 374
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 375
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 376
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 377
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 378
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 6

    .prologue
    const/16 v4, 0x10

    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 182
    if-eqz v1, :cond_c

    .line 183
    invoke-virtual {v1, p0}, Landroid/support/v4/app/NotificationCompat$Style;->apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    .line 186
    :cond_c
    if-eqz v1, :cond_12

    .line 187
    invoke-virtual {v1, p0}, Landroid/support/v4/app/NotificationCompat$Style;->makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 189
    :cond_12
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    move-result-object v2

    .line 190
    if-eqz v0, :cond_4c

    .line 191
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 195
    :cond_1a
    :goto_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_28

    if-eqz v1, :cond_28

    .line 196
    invoke-virtual {v1, p0}, Landroid/support/v4/app/NotificationCompat$Style;->makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_28

    .line 198
    iput-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 201
    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3c

    if-eqz v1, :cond_3c

    .line 203
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_3c

    .line 205
    iput-object v0, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 209
    :cond_3c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4b

    if-eqz v1, :cond_4b

    .line 210
    invoke-static {v2}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_4b

    .line 212
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 216
    :cond_4b
    return-object v2

    .line 192
    :cond_4c
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1a

    .line 193
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1a
.end method

.method protected buildInternal()Landroid/app/Notification;
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 250
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 251
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_46

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 254
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_45

    .line 256
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 257
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_32

    .line 258
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_32

    .line 259
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 262
    :cond_32
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 263
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_45

    .line 264
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_45

    .line 265
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 269
    :cond_45
    return-object v0

    .line 270
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9c

    .line 271
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 272
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 273
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_61

    .line 274
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 276
    :cond_61
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_69

    .line 277
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 279
    :cond_69
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_71

    .line 280
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 283
    :cond_71
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_9b

    .line 285
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 286
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_88

    .line 287
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_88

    .line 288
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 291
    :cond_88
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9b

    .line 292
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_9b

    .line 293
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_9b

    .line 294
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 297
    :cond_9b
    return-object v0

    .line 298
    :cond_9c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_ea

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 300
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 301
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b7

    .line 302
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 304
    :cond_b7
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_bf

    .line 305
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 308
    :cond_bf
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_e9

    .line 310
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 311
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d6

    .line 312
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_d6

    .line 313
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 316
    :cond_d6
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e9

    .line 317
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_e9

    .line 318
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_e9

    .line 319
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 323
    :cond_e9
    return-object v0

    .line 324
    :cond_ea
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11e

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_100

    .line 329
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 330
    const-string/jumbo v2, "android.support.actionExtras"

    .line 329
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 332
    :cond_100
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 333
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 334
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_115

    .line 335
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 337
    :cond_115
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_11d

    .line 338
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 340
    :cond_11d
    return-object v0

    .line 341
    :cond_11e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_17b

    .line 342
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 345
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 346
    new-instance v3, Landroid/os/Bundle;

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13f
    :goto_13f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 349
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_13f

    .line 352
    :cond_155
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 354
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_16a

    .line 357
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 358
    const-string/jumbo v3, "android.support.actionExtras"

    .line 357
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 360
    :cond_16a
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_172

    .line 361
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 363
    :cond_172
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_17a

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 366
    :cond_17a
    return-object v1

    .line 369
    :cond_17b
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method
