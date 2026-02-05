.class public Landroid/support/v4/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$Action;,
        Landroid/support/v4/app/NotificationCompat$BadgeIconType;,
        Landroid/support/v4/app/NotificationCompat$BigPictureStyle;,
        Landroid/support/v4/app/NotificationCompat$BigTextStyle;,
        Landroid/support/v4/app/NotificationCompat$Builder;,
        Landroid/support/v4/app/NotificationCompat$CarExtender;,
        Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;,
        Landroid/support/v4/app/NotificationCompat$Extender;,
        Landroid/support/v4/app/NotificationCompat$GroupAlertBehavior;,
        Landroid/support/v4/app/NotificationCompat$InboxStyle;,
        Landroid/support/v4/app/NotificationCompat$MessagingStyle;,
        Landroid/support/v4/app/NotificationCompat$NotificationVisibility;,
        Landroid/support/v4/app/NotificationCompat$Style;,
        Landroid/support/v4/app/NotificationCompat$WearableExtender;
    }
.end annotation


# static fields
.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 4565
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_10

    .line 4566
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 4567
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_36

    .line 4568
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v1, v1, p1

    .line 4570
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4571
    const-string/jumbo v3, "android.support.actionExtras"

    .line 4570
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 4572
    if-eqz v2, :cond_2b

    .line 4573
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4575
    :cond_2b
    iget v2, v1, Landroid/app/Notification$Action;->icon:I

    iget-object v3, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 4576
    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4575
    invoke-static {v2, v3, v1, v0}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 4577
    :cond_36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_41

    .line 4578
    invoke-static {p0, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 4580
    :cond_41
    return-object v0
.end method

.method static getActionCompatFromAction(Landroid/app/Notification$Action;)Landroid/support/v4/app/NotificationCompat$Action;
    .registers 11
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4587
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v9

    .line 4588
    if-nez v9, :cond_2f

    move-object v5, v6

    .line 4600
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5a

    .line 4601
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4602
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 4601
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 4603
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v7

    .line 4608
    :goto_1f
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4609
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 4608
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0

    .line 4591
    :cond_2f
    array-length v0, v9

    new-array v8, v0, [Landroid/support/v4/app/RemoteInput;

    .line 4592
    const/4 v0, 0x0

    move v7, v0

    :goto_34
    array-length v0, v9

    if-ge v7, v0, :cond_66

    .line 4593
    aget-object v5, v9, v7

    .line 4594
    new-instance v0, Landroid/support/v4/app/RemoteInput;

    invoke-virtual {v5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4595
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    invoke-virtual {v5}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 4594
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v0, v8, v7

    .line 4592
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_34

    .line 4601
    :cond_58
    const/4 v7, 0x1

    goto :goto_1f

    .line 4605
    :cond_5a
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4606
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 4605
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_1f

    :cond_66
    move-object v5, v8

    goto :goto_8
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4549
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_f

    .line 4550
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_e

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    :cond_e
    return v0

    .line 4551
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1a

    .line 4552
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    return v0

    .line 4554
    :cond_1a
    return v0
.end method

.method public static getBadgeIconType(Landroid/app/Notification;)I
    .registers 3

    .prologue
    .line 4734
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4735
    invoke-virtual {p0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v0

    return v0

    .line 4737
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 4619
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object v0

    .line 4621
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4709
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4710
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4712
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 4535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 4536
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0

    .line 4537
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 4538
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 4540
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4649
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_b

    .line 4650
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4651
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 4652
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.groupKey"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4653
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2d

    .line 4654
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 4655
    const-string/jumbo v1, "android.support.groupKey"

    .line 4654
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4657
    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroupAlertBehavior(Landroid/app/Notification;)I
    .registers 3

    .prologue
    .line 4760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4761
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    return v0

    .line 4763
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4632
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_f

    .line 4633
    iget v1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 4634
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1f

    .line 4635
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.localOnly"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4636
    :cond_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_31

    .line 4637
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 4638
    const-string/jumbo v1, "android.support.localOnly"

    .line 4637
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4640
    :cond_31
    return v0
.end method

.method static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .registers 6

    .prologue
    .line 4517
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 4518
    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_a

    if-nez v0, :cond_d

    .line 4519
    :cond_a
    check-cast v0, [Landroid/app/Notification;

    return-object v0

    .line 4521
    :cond_d
    array-length v1, v0

    new-array v3, v1, [Landroid/app/Notification;

    .line 4522
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    array-length v1, v0

    if-ge v2, v1, :cond_1f

    .line 4523
    aget-object v1, v0, v2

    check-cast v1, Landroid/app/Notification;

    aput-object v1, v3, v2

    .line 4522
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12

    .line 4525
    :cond_1f
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4526
    return-object v3
.end method

.method public static getShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4746
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4747
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4749
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_b

    .line 4694
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4695
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 4696
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.sortKey"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4697
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2d

    .line 4698
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 4699
    const-string/jumbo v1, "android.support.sortKey"

    .line 4698
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4701
    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTimeoutAfter(Landroid/app/Notification;)J
    .registers 3

    .prologue
    .line 4721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4722
    invoke-virtual {p0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    return-wide v0

    .line 4724
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4668
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_f

    .line 4669
    iget v1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 4670
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1f

    .line 4671
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.isGroupSummary"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4672
    :cond_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_31

    .line 4673
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 4674
    const-string/jumbo v1, "android.support.isGroupSummary"

    .line 4673
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4676
    :cond_31
    return v0
.end method
