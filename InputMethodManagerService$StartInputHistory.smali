.class final Lcom/android/server/InputMethodManagerService$StartInputHistory;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartInputHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY_SIZE_FOR_HIGH_RAM_DEVICE:I = 0x10

.field private static final ENTRY_SIZE_FOR_LOW_RAM_DEVICE:I = 0x5


# instance fields
.field private final mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    invoke-static {}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->getEntrySize()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 615
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService$StartInputHistory;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$StartInputHistory;-><init>()V

    return-void
.end method

.method private static getEntrySize()I
    .registers 1

    .prologue
    .line 633
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 634
    const/4 v0, 0x5

    return v0

    .line 636
    :cond_8
    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method addEntry(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V
    .registers 5

    .prologue
    .line 700
    iget v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 701
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    aget-object v1, v1, v0

    if-nez v1, :cond_1c

    .line 702
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    new-instance v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    invoke-direct {v2, p1}, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;-><init>(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    aput-object v2, v1, v0

    .line 706
    :goto_11
    iget v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 707
    return-void

    .line 704
    :cond_1c
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    goto :goto_11
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 711
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 713
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1a0

    .line 714
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    iget v3, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 715
    if-nez v2, :cond_20

    .line 713
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 718
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StartInput #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v6, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 723
    const-string/jumbo v4, " (timestamp="

    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 723
    iget-wide v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    .line 722
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 723
    const-string/jumbo v4, ")"

    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 724
    const-string/jumbo v4, " reason="

    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 725
    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    invoke-static {v4}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 726
    const-string/jumbo v4, " restarting="

    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 726
    iget-boolean v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " imeToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " targetWin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 733
    const-string/jumbo v4, " ["

    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 733
    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 733
    const-string/jumbo v4, "]"

    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 734
    const-string/jumbo v4, " clientBindSeq="

    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 734
    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 738
    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 737
    invoke-static {v4}, Lcom/android/internal/view/InputMethodClient;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " inputType=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 742
    const-string/jumbo v4, " imeOptions=0x"

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 742
    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 743
    const-string/jumbo v4, " fieldId=0x"

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 743
    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    const-string/jumbo v4, " fieldName="

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    const-string/jumbo v4, " actionId="

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    const-string/jumbo v4, " actionLabel="

    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 741
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 748
    :cond_1a0
    return-void
.end method
