.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$Action$Builder;,
        Landroid/support/v4/app/NotificationCompat$Action$Extender;,
        Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    }
.end annotation


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 2758
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    .line 2759
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V
    .registers 9

    .prologue
    .line 2761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2764
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    .line 2765
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 2766
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2767
    if-eqz p4, :cond_18

    :goto_f
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 2768
    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    .line 2769
    iput-object p6, p0, Landroid/support/v4/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    .line 2770
    iput-boolean p7, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 2771
    return-void

    .line 2767
    :cond_18
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_f
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 2782
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .registers 2

    .prologue
    .line 2797
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .registers 2

    .prologue
    .line 2820
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 2789
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .prologue
    .line 2774
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    return v0
.end method

.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .registers 2

    .prologue
    .line 2806
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2778
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
