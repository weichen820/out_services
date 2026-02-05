.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mFdList:[Ljava/io/FileDescriptor;

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .registers 8

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    .line 44
    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    .line 45
    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    .line 50
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .registers 7

    .prologue
    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_1a

    aget-object v3, p0, v0

    .line 184
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_17

    .line 185
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 188
    :cond_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static isClassUnsolicited(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 117
    const/16 v1, 0x258

    if-lt p0, v1, :cond_a

    const/16 v1, 0x2bc

    if-ge p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 138
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    array-length v0, v3

    if-ge v0, v7, :cond_16

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Insufficient arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_16
    const/4 v0, 0x0

    :try_start_17
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 148
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_23} :catch_3a

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 153
    const/4 v1, -0x1

    .line 154
    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v4

    if-nez v4, :cond_55

    .line 155
    array-length v1, v3

    const/4 v4, 0x3

    if-ge v1, v4, :cond_44

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Insufficient arguemnts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :catch_3a
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "problem parsing code"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 159
    :cond_44
    const/4 v1, 0x1

    :try_start_45
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_51} :catch_9b

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 167
    :cond_55
    array-length v4, v3

    if-le v4, v7, :cond_a5

    aget-object v4, v3, v7

    const-string/jumbo v5, "{{sensitive}}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 168
    aget-object v4, v3, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " {}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    :goto_8f
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v0, Lcom/android/server/NativeDaemonEvent;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v0

    .line 161
    :catch_9b
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "problem parsing cmdNumber"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a5
    move-object v5, p0

    .line 167
    goto :goto_8f

    :cond_a7
    move-object v5, p0

    goto :goto_8f
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v1, 0x22

    const/16 v2, 0x20

    const/4 v5, 0x1

    const/4 v12, -0x1

    const/4 v6, 0x0

    .line 208
    const-string/jumbo v0, "unescapeArgs"

    .line 209
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 216
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_8e

    move v8, v5

    move v7, v5

    .line 220
    :goto_1b
    if-ge v7, v4, :cond_7f

    .line 222
    if-eqz v8, :cond_36

    move v0, v1

    :goto_20
    move v3, v7

    .line 224
    :goto_21
    if-ge v3, v4, :cond_38

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v0, :cond_38

    .line 225
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_33

    .line 227
    add-int/lit8 v3, v3, 0x1

    .line 229
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_36
    move v0, v2

    .line 222
    goto :goto_20

    .line 231
    :cond_38
    if-le v3, v4, :cond_3b

    move v3, v4

    .line 232
    :cond_3b
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v7

    .line 234
    if-nez v8, :cond_76

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_4a
    const-string/jumbo v7, "\\\\"

    const-string/jumbo v8, "\\"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string/jumbo v7, "\\\""

    const-string/jumbo v8, "\""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 248
    const-string/jumbo v7, " \""

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 252
    if-le v7, v12, :cond_79

    if-gt v7, v0, :cond_79

    .line 254
    add-int/lit8 v3, v7, 0x2

    move v0, v5

    :goto_73
    move v8, v0

    move v7, v3

    goto :goto_1b

    .line 237
    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 257
    :cond_79
    if-le v0, v12, :cond_8c

    .line 258
    add-int/lit8 v3, v0, 0x1

    move v0, v6

    goto :goto_73

    .line 266
    :cond_7f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_8c
    move v0, v6

    goto :goto_73

    :cond_8e
    move v8, v6

    move v7, v6

    goto :goto_1b
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    if-eq v0, p1, :cond_29

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_29
    return-void
.end method

.method public getCmdNumber()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 199
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 201
    :cond_d
    add-int/lit8 v0, p1, 0x2

    .line 202
    iget-object v1, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_15

    return-object v2

    .line 203
    :cond_15
    iget-object v1, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isClassContinue()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 85
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isClassOk()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isClassServerError()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 99
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x190

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isClassUnsolicited()Z
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object v0
.end method
