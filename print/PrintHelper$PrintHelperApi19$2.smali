.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintAttributes;ILandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$attributes:Landroid/print/PrintAttributes;

    iput p7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fittingMode:I

    iput-object p8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 463
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 464
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 467
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 468
    return-object v8

    .line 471
    :cond_a
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    .line 472
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 471
    invoke-direct {v1, v0, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 474
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 475
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    .line 474
    invoke-static {v0, v2, v3}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap0(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 477
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_ba

    move-result v0

    if-eqz v0, :cond_2c

    .line 478
    return-object v8

    .line 482
    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 485
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v0, :cond_81

    .line 486
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 499
    :goto_44
    iget-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 501
    iget v7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fittingMode:I

    .line 499
    invoke-static {v4, v5, v6, v0, v7}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap2(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v4

    .line 503
    iget-object v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v5, v5, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v5, :cond_bc

    .line 514
    :goto_5a
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 517
    invoke-virtual {v1, v3}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 519
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_6a
    .catchall {:try_start_2d .. :try_end_6a} :catchall_a5

    move-result v0

    if-eqz v0, :cond_cb

    .line 528
    :try_start_6d
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 530
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_72} :catch_ba

    if-eqz v0, :cond_79

    .line 532
    :try_start_74
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_79} :catch_ba

    .line 538
    :cond_79
    :goto_79
    :try_start_79
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_80

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_80} :catch_ba

    .line 520
    :cond_80
    return-object v8

    .line 490
    :cond_81
    :try_start_81
    new-instance v4, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    .line 491
    iget-object v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$attributes:Landroid/print/PrintAttributes;

    .line 490
    invoke-direct {v4, v0, v5}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 492
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v5

    .line 493
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 494
    invoke-virtual {v4, v5}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 495
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument;->close()V
    :try_end_a4
    .catchall {:try_start_81 .. :try_end_a4} :catchall_a5

    goto :goto_44

    .line 527
    :catchall_a5
    move-exception v0

    .line 528
    :try_start_a6
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 530
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_ab} :catch_ba

    if-eqz v1, :cond_b2

    .line 532
    :try_start_ad
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b2} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b2} :catch_ba

    .line 538
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v1, :cond_b9

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 527
    :cond_b9
    throw v0
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_ba} :catch_ba

    .line 542
    :catch_ba
    move-exception v0

    .line 543
    return-object v0

    .line 507
    :cond_bc
    :try_start_bc
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 510
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_5a

    .line 525
    :cond_cb
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 524
    invoke-virtual {v1, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_d9
    .catchall {:try_start_bc .. :try_end_d9} :catchall_a5

    .line 528
    :try_start_d9
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 530
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_de} :catch_ba

    if-eqz v0, :cond_e5

    .line 532
    :try_start_e0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e5} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e5} :catch_ba

    .line 538
    :cond_e5
    :goto_e5
    :try_start_e5
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_ec

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_ec} :catch_ba

    .line 526
    :cond_ec
    return-object v8

    .line 533
    :catch_ed
    move-exception v1

    goto :goto_b2

    :catch_ef
    move-exception v0

    goto :goto_e5

    :catch_f1
    move-exception v0

    goto :goto_79
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 547
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 551
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    .line 561
    :goto_e
    return-void

    .line 552
    :cond_f
    if-nez p1, :cond_1f

    .line 554
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 555
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 554
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_e

    .line 558
    :cond_1f
    const-string/jumbo v0, "PrintHelperApi19"

    const-string/jumbo v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0, v2}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method
