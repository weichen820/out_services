.class public Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDebug:Ljava/lang/Object;

.field private mDetachCalled:Z

.field private mFlags:I

.field private mSendErrorCalled:Z

.field private mSendProgressUpdateCalled:Z

.field private mSendResultCalled:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 604
    return-void
.end method

.method private checkExtraFields(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 706
    if-nez p1, :cond_3

    .line 707
    return-void

    .line 709
    :cond_3
    const-string/jumbo v0, "android.media.browse.extra.DOWNLOAD_PROGRESS"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 710
    const-string/jumbo v0, "android.media.browse.extra.DOWNLOAD_PROGRESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 711
    const v1, -0x48d83a54    # -1.0E-5f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_21

    const v1, 0x3f800054    # 1.00001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    .line 712
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_2a
    return-void
.end method


# virtual methods
.method public detach()V
    .registers 4

    .prologue
    .line 654
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    if-eqz v0, :cond_20

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach() called when detach() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 656
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_20
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-eqz v0, :cond_40

    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach() called when sendResult() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_40
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-eqz v0, :cond_60

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach() called when sendError() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    .line 667
    return-void
.end method

.method getFlags()I
    .registers 2

    .prologue
    .line 678
    iget v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mFlags:I

    return v0
.end method

.method isDone()Z
    .registers 2

    .prologue
    .line 670
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method onErrorSent(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 701
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "It is not supported to send an error for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onProgressUpdateSent(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 692
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "It is not supported to send an interim update for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 693
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 692
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onResultSent(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 686
    return-void
.end method

.method public sendError(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-eqz v0, :cond_24

    .line 642
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    .line 646
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->onErrorSent(Landroid/os/Bundle;)V

    .line 647
    return-void
.end method

.method public sendProgressUpdate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 625
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-eqz v0, :cond_24

    .line 626
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendProgressUpdate() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 627
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 626
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_24
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->checkExtraFields(Landroid/os/Bundle;)V

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendProgressUpdateCalled:Z

    .line 631
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->onProgressUpdateSent(Landroid/os/Bundle;)V

    .line 632
    return-void
.end method

.method public sendResult(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-eqz v0, :cond_24

    .line 611
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    .line 615
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->onResultSent(Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method setFlags(I)V
    .registers 2

    .prologue
    .line 674
    iput p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mFlags:I

    .line 675
    return-void
.end method
