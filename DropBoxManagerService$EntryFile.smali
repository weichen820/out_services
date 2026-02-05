.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 666
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 667
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 668
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 669
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 614
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 615
    if-gez v3, :cond_40

    move-wide v2, v4

    move-object v0, v6

    move v7, v1

    move v8, v9

    .line 642
    :goto_18
    if-eqz v8, :cond_b8

    .line 643
    const-string/jumbo v0, "DropBoxManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 647
    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 648
    iput v9, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 649
    iput-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 650
    iput v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 651
    return-void

    .line 618
    :cond_40
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 619
    const-string/jumbo v0, ".gz"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 620
    const/4 v0, 0x4

    .line 621
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 623
    :goto_5c
    const-string/jumbo v8, ".lost"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 624
    or-int/lit8 v0, v0, 0x1

    .line 625
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    .line 634
    :goto_74
    if-nez v8, :cond_d1

    .line 636
    :try_start_76
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_79} :catch_b0

    move-result-wide v2

    move-object v10, v7

    move v7, v0

    move-object v0, v10

    goto :goto_18

    .line 626
    :cond_7e
    const-string/jumbo v8, ".txt"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 627
    or-int/lit8 v0, v0, 0x2

    .line 628
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    goto :goto_74

    .line 629
    :cond_97
    const-string/jumbo v8, ".dat"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 630
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    goto :goto_74

    :cond_ae
    move v8, v9

    .line 632
    goto :goto_74

    .line 637
    :catch_b0
    move-exception v2

    move-wide v2, v4

    move v8, v9

    move v10, v0

    move-object v0, v7

    move v7, v10

    .line 638
    goto/16 :goto_18

    .line 654
    :cond_b8
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v8, p2

    add-long/2addr v4, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    int-to-long v8, p2

    div-long/2addr v4, v8

    long-to-int v1, v4

    iput v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 655
    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 656
    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 657
    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 658
    return-void

    :cond_d1
    move-wide v2, v4

    move-object v10, v7

    move v7, v0

    move-object v0, v10

    goto/16 :goto_18

    :cond_d7
    move v0, v1

    goto :goto_5c
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 569
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 570
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 571
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 573
    invoke-virtual {p0, p2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 574
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 575
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 590
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 591
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 593
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 594
    return-void
.end method

.method private getExtension()Ljava/lang/String;
    .registers 3

    .prologue
    .line 681
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    .line 682
    const-string/jumbo v0, ".lost"

    return-object v0

    .line 684
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2e

    const-string/jumbo v0, ".txt"

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 685
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_32

    const-string/jumbo v0, ".gz"

    .line 684
    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const-string/jumbo v0, ".dat"

    goto :goto_18

    .line 685
    :cond_32
    const-string/jumbo v0, ""

    goto :goto_25
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .registers 6

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 543
    if-eqz v0, :cond_b

    return v0

    .line 545
    :cond_b
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 546
    if-eqz v0, :cond_16

    return v0

    .line 548
    :cond_16
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 549
    if-eqz v0, :cond_21

    return v0

    .line 551
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 540
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result v0

    return v0
.end method

.method public deleteFile(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 711
    :cond_d
    return-void
.end method

.method public getFile(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getFilename()Ljava/lang/String;
    .registers 5

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public hasFile()Z
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
