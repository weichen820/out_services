.class public Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2604
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2605
    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2677
    sget v0, Landroid/support/compat/R$layout;->notification_template_custom_big:I

    .line 2676
    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/app/NotificationCompat$Style;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 2678
    sget v0, Landroid/support/compat/R$id;->actions:I

    invoke-virtual {v4, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2680
    if-eqz p2, :cond_3e

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    .line 2681
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2682
    if-lez v5, :cond_55

    move v3, v1

    .line 2684
    :goto_25
    if-ge v3, v5, :cond_53

    .line 2685
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2686
    sget v6, Landroid/support/compat/R$id;->actions:I

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2684
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    :cond_3e
    move v0, v1

    .line 2690
    :goto_3f
    if-eqz v0, :cond_50

    move v0, v1

    .line 2691
    :goto_42
    sget v1, Landroid/support/compat/R$id;->actions:I

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2692
    sget v1, Landroid/support/compat/R$id;->action_divider:I

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2693
    invoke-virtual {p0, v4, p1}, Landroid/support/v4/app/NotificationCompat$Style;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2694
    return-object v4

    .line 2690
    :cond_50
    const/16 v0, 0x8

    goto :goto_42

    :cond_53
    move v0, v2

    goto :goto_3f

    :cond_55
    move v0, v1

    goto :goto_3f
.end method

.method private generateActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .registers 8

    .prologue
    .line 2698
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    .line 2699
    :goto_5
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2700
    if-eqz v0, :cond_51

    sget v1, Landroid/support/compat/R$layout;->notification_action_tombstone:I

    .line 2699
    :goto_13
    invoke-direct {v2, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2702
    sget v1, Landroid/support/compat/R$id;->action_image:I

    .line 2703
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2704
    sget v5, Landroid/support/compat/R$color;->notification_action_color_filter:I

    .line 2703
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2702
    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2705
    sget v1, Landroid/support/compat/R$id;->action_text:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2706
    if-nez v0, :cond_41

    .line 2707
    sget v0, Landroid/support/compat/R$id;->action_container:I

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2709
    :cond_41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_4e

    .line 2710
    sget v0, Landroid/support/compat/R$id;->action_container:I

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 2712
    :cond_4e
    return-object v2

    .line 2698
    :cond_4f
    const/4 v0, 0x0

    goto :goto_5

    .line 2701
    :cond_51
    sget v1, Landroid/support/compat/R$layout;->notification_action:I

    goto :goto_13
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 2614
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2616
    :cond_12
    return-void
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 2643
    return-object v2

    .line 2645
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2646
    if-eqz v0, :cond_13

    .line 2649
    :goto_10
    if-nez v0, :cond_1a

    .line 2651
    return-object v2

    .line 2648
    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_10

    .line 2653
    :cond_1a
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2624
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 2626
    return-object v2

    .line 2628
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2630
    return-object v2

    .line 2632
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2662
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 2664
    return-object v2

    .line 2666
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 2667
    if-eqz v1, :cond_14

    move-object v0, v1

    .line 2668
    :goto_11
    if-nez v1, :cond_1b

    .line 2670
    return-object v2

    .line 2667
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_11

    .line 2672
    :cond_1b
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
