.class public final Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 41
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 44
    const/16 v0, 0x63

    if-gt p0, v0, :cond_b

    if-eqz p2, :cond_e

    if-lt p3, v3, :cond_e

    .line 45
    :cond_b
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 47
    :cond_e
    const/16 v0, 0x9

    if-gt p0, v0, :cond_16

    if-eqz p2, :cond_19

    if-lt p3, v2, :cond_19

    .line 48
    :cond_16
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 50
    :cond_19
    if-nez p2, :cond_1d

    if-lez p0, :cond_20

    .line 51
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 53
    :cond_20
    return v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    .line 179
    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    return-void

    .line 182
    :cond_d
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 183
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 173
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 10
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 165
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 167
    return-void

    .line 163
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 154
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 156
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 158
    return-void

    .line 154
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static formatDurationLocked(JI)I
    .registers 21

    .prologue
    .line 81
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v2, v2

    move/from16 v0, p2

    if-ge v2, v0, :cond_d

    .line 82
    move/from16 v0, p2

    new-array v2, v0, [C

    sput-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 85
    :cond_d
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 87
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-nez v3, :cond_25

    .line 88
    const/4 v3, 0x0

    .line 89
    add-int/lit8 v4, p2, -0x1

    .line 90
    :goto_18
    if-lez v4, :cond_1f

    .line 91
    const/16 v5, 0x20

    aput-char v5, v2, v3

    goto :goto_18

    .line 93
    :cond_1f
    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 94
    const/4 v2, 0x1

    return v2

    .line 98
    :cond_25
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_b1

    .line 99
    const/16 v3, 0x2b

    move v4, v3

    .line 105
    :goto_2e
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v0, v6

    move/from16 v16, v0

    .line 106
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v7, v6

    .line 107
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 109
    const v8, 0x15180

    if-le v7, v8, :cond_51

    .line 110
    const v3, 0x15180

    div-int v3, v7, v3

    .line 111
    const v8, 0x15180

    mul-int/2addr v8, v3

    sub-int/2addr v7, v8

    .line 113
    :cond_51
    const/16 v8, 0xe10

    if-le v7, v8, :cond_129

    .line 114
    div-int/lit16 v6, v7, 0xe10

    .line 115
    mul-int/lit16 v8, v6, 0xe10

    sub-int/2addr v7, v8

    move v15, v6

    move v6, v7

    .line 117
    :goto_5c
    const/16 v7, 0x3c

    if-le v6, v7, :cond_125

    .line 118
    div-int/lit8 v5, v6, 0x3c

    .line 119
    mul-int/lit8 v7, v5, 0x3c

    sub-int/2addr v6, v7

    move v13, v5

    move v14, v6

    .line 122
    :goto_67
    const/4 v6, 0x0

    .line 124
    if-eqz p2, :cond_c3

    .line 125
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v5, v7, v8}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    .line 126
    if-lez v7, :cond_bb

    const/4 v5, 0x1

    :goto_74
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v15, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/2addr v7, v5

    .line 127
    if-lez v7, :cond_bd

    const/4 v5, 0x1

    :goto_7e
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v13, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/2addr v7, v5

    .line 128
    if-lez v7, :cond_bf

    const/4 v5, 0x1

    :goto_88
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v14, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/2addr v7, v5

    .line 129
    if-lez v7, :cond_c1

    const/4 v5, 0x3

    :goto_92
    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v0, v16

    invoke-static {v0, v8, v9, v5}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    .line 130
    :goto_a2
    move/from16 v0, p2

    if-ge v6, v0, :cond_c4

    .line 131
    const/16 v7, 0x20

    aput-char v7, v2, v5

    .line 132
    add-int/lit8 v7, v5, 0x1

    .line 133
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v7

    goto :goto_a2

    .line 101
    :cond_b1
    const/16 v3, 0x2d

    .line 102
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v4, v3

    goto/16 :goto_2e

    .line 126
    :cond_bb
    const/4 v5, 0x0

    goto :goto_74

    .line 127
    :cond_bd
    const/4 v5, 0x0

    goto :goto_7e

    .line 128
    :cond_bf
    const/4 v5, 0x0

    goto :goto_88

    .line 129
    :cond_c1
    const/4 v5, 0x0

    goto :goto_92

    :cond_c3
    move v5, v6

    .line 137
    :cond_c4
    aput-char v4, v2, v5

    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 141
    if-eqz p2, :cond_114

    const/4 v4, 0x1

    move v12, v4

    .line 142
    :goto_cc
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 143
    if-eq v9, v5, :cond_117

    const/4 v10, 0x1

    :goto_d7
    if-eqz v12, :cond_119

    const/4 v11, 0x2

    :goto_da
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v15

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 144
    if-eq v9, v5, :cond_11b

    const/4 v10, 0x1

    :goto_e5
    if-eqz v12, :cond_11d

    const/4 v11, 0x2

    :goto_e8
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v13

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 145
    if-eq v9, v5, :cond_11f

    const/4 v10, 0x1

    :goto_f3
    if-eqz v12, :cond_121

    const/4 v11, 0x2

    :goto_f6
    const/16 v8, 0x73

    move-object v6, v2

    move v7, v14

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v8

    .line 146
    if-eqz v12, :cond_123

    if-eq v8, v5, :cond_123

    const/4 v7, 0x3

    :goto_103
    const/16 v4, 0x6d

    const/4 v6, 0x1

    move/from16 v3, v16

    move v5, v8

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v3

    .line 147
    const/16 v4, 0x73

    aput-char v4, v2, v3

    .line 148
    add-int/lit8 v2, v3, 0x1

    return v2

    .line 141
    :cond_114
    const/4 v4, 0x0

    move v12, v4

    goto :goto_cc

    .line 143
    :cond_117
    const/4 v10, 0x0

    goto :goto_d7

    :cond_119
    const/4 v11, 0x0

    goto :goto_da

    .line 144
    :cond_11b
    const/4 v10, 0x0

    goto :goto_e5

    :cond_11d
    const/4 v11, 0x0

    goto :goto_e8

    .line 145
    :cond_11f
    const/4 v10, 0x0

    goto :goto_f3

    :cond_121
    const/4 v11, 0x0

    goto :goto_f6

    .line 146
    :cond_123
    const/4 v7, 0x0

    goto :goto_103

    :cond_125
    move v13, v5

    move v14, v6

    goto/16 :goto_67

    :cond_129
    move v15, v6

    move v6, v7

    goto/16 :goto_5c
.end method

.method private static printField([CICIZI)I
    .registers 10

    .prologue
    .line 58
    if-nez p4, :cond_4

    if-lez p1, :cond_32

    .line 60
    :cond_4
    if-eqz p4, :cond_33

    const/4 v0, 0x3

    if-lt p5, v0, :cond_33

    .line 61
    :cond_9
    div-int/lit8 v1, p1, 0x64

    .line 62
    add-int/lit8 v0, v1, 0x30

    int-to-char v0, v0

    aput-char v0, p0, p3

    .line 63
    add-int/lit8 v0, p3, 0x1

    .line 64
    mul-int/lit8 v1, v1, 0x64

    sub-int v1, p1, v1

    .line 66
    :goto_16
    if-eqz p4, :cond_3a

    const/4 v2, 0x2

    if-lt p5, v2, :cond_3a

    .line 67
    :cond_1b
    :goto_1b
    div-int/lit8 v2, v1, 0xa

    .line 68
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    aput-char v3, p0, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 72
    :cond_27
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    aput-char p2, p0, v0

    .line 75
    add-int/lit8 p3, v0, 0x1

    .line 77
    :cond_32
    return p3

    .line 60
    :cond_33
    const/16 v0, 0x63

    if-gt p1, v0, :cond_9

    move v0, p3

    move v1, p1

    goto :goto_16

    .line 66
    :cond_3a
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1b

    if-eq p3, v0, :cond_27

    goto :goto_1b
.end method
