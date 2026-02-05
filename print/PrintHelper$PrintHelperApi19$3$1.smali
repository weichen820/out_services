.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;Landroid/os/CancellationSignal;Landroid/net/Uri;Ljava/lang/String;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$imageFile:Landroid/net/Uri;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$jobName:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 611
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 628
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$imageFile:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap1(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 629
    :catch_b
    move-exception v0

    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 625
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 682
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 683
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 678
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 637
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 641
    if-eqz p1, :cond_48

    .line 642
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mPrintActivityRespectsOrientation:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    if-nez v0, :cond_48

    .line 645
    :cond_18
    monitor-enter p0

    .line 646
    :try_start_19
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->-get0(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)Landroid/print/PrintAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_75

    move-result-object v0

    monitor-exit p0

    .line 649
    if-eqz v0, :cond_48

    .line 650
    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    invoke-static {p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap3(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eq v0, v2, :cond_48

    .line 651
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 653
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    .line 654
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 661
    :cond_48
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object p1, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 662
    if-eqz p1, :cond_78

    .line 663
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 668
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 670
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 675
    :goto_70
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object v7, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 676
    return-void

    .line 645
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0

    .line 673
    :cond_78
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, v7}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_70
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 635
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 616
    new-instance v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;

    invoke-direct {v1, p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;)V

    .line 615
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 623
    return-void
.end method
