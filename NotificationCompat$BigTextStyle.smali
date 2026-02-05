.class public Landroid/support/v4/app/NotificationCompat$BigTextStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1972
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 1973
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 2

    .prologue
    .line 1975
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 1976
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1977
    return-void
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
    .line 2012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    .line 2014
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 2015
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2014
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 2016
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2014
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 2017
    iget-boolean v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_24

    .line 2018
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2021
    :cond_24
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .registers 3

    .prologue
    .line 2002
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2003
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .registers 3

    .prologue
    .line 1984
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 1985
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .registers 3

    .prologue
    .line 1992
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 1994
    return-object p0
.end method
