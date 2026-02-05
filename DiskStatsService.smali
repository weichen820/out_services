.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final DISKSTATS_DUMP_FILE:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 190
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_12

    aget-object v3, p1, v0

    .line 191
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 192
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 195
    :cond_12
    return v1
.end method

.method private reportCachedValues(Ljava/io/PrintWriter;)V
    .registers 6

    .prologue
    .line 201
    :try_start_0
    const-string/jumbo v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v0, "App Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v0, "appSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 205
    const-string/jumbo v0, "App Data Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v0, "appDataSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 207
    const-string/jumbo v0, "App Cache Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "cacheSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 209
    const-string/jumbo v0, "Photos Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "photosSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 211
    const-string/jumbo v0, "Videos Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "videosSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 213
    const-string/jumbo v0, "Audio Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "audioSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 215
    const-string/jumbo v0, "Downloads Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "downloadsSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 217
    const-string/jumbo v0, "System Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "systemSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 219
    const-string/jumbo v0, "Other Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "otherSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 221
    const-string/jumbo v0, "Package Names: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "packageNames"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v0, "App Sizes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "appSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 225
    const-string/jumbo v0, "App Data Sizes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "appDataSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v0, "Cache Sizes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "cacheSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_dc} :catch_dd
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_dc} :catch_dd

    .line 232
    :goto_dc
    return-void

    .line 229
    :catch_dd
    move-exception v0

    .line 230
    const-string/jumbo v1, "DiskStatsService"

    const-string/jumbo v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_dc
.end method

.method private reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 16

    .prologue
    .line 236
    :try_start_0
    const-string/jumbo v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    const-wide v2, 0x11100000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 241
    const-string/jumbo v0, "appSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 240
    const-wide v6, 0x10400000001L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 243
    const-string/jumbo v0, "appDataSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 242
    const-wide v6, 0x1040000000aL

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 245
    const-string/jumbo v0, "cacheSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 244
    const-wide v6, 0x10400000002L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 247
    const-string/jumbo v0, "photosSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 246
    const-wide v6, 0x10400000003L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 249
    const-string/jumbo v0, "videosSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 248
    const-wide v6, 0x10400000004L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 251
    const-string/jumbo v0, "audioSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 250
    const-wide v6, 0x10400000005L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 253
    const-string/jumbo v0, "downloadsSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 252
    const-wide v6, 0x10400000006L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 255
    const-string/jumbo v0, "systemSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 254
    const-wide v6, 0x10400000007L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 257
    const-string/jumbo v0, "otherSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 256
    const-wide v6, 0x10400000008L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 259
    const-string/jumbo v0, "packageNames"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 260
    const-string/jumbo v0, "appSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 261
    const-string/jumbo v0, "appDataSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 262
    const-string/jumbo v0, "cacheSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 263
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 264
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v7, v0, :cond_110

    .line 265
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v7, v0, :cond_110

    .line 266
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v7, v0, :cond_110

    .line 267
    const/4 v0, 0x0

    :goto_cf
    if-ge v0, v7, :cond_119

    .line 268
    const-wide v8, 0x21100000009L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 271
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 270
    const-wide v12, 0x10e00000001L

    invoke-virtual {p1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 272
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0x10400000002L

    invoke-virtual {p1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 273
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0x10400000004L

    invoke-virtual {p1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 274
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0x10400000003L

    invoke-virtual {p1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 276
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_cf

    .line 279
    :cond_110
    const-string/jumbo v0, "DiskStatsService"

    const-string/jumbo v1, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_119
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11c} :catch_11d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_11c} :catch_11d

    .line 287
    :goto_11c
    return-void

    .line 284
    :catch_11d
    move-exception v0

    .line 285
    const-string/jumbo v1, "DiskStatsService"

    const-string/jumbo v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11c
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    .line 152
    :try_start_2
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 154
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    .line 155
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 156
    cmp-long v6, v2, v8

    if-lez v6, :cond_22

    cmp-long v6, v0, v8

    if-gtz v6, :cond_56

    .line 157
    :cond_22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid stat: bsize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " avail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    :catch_52
    move-exception v0

    .line 178
    if-eqz p4, :cond_b8

    .line 185
    :goto_55
    return-void

    .line 161
    :cond_56
    if-eqz p4, :cond_85

    .line 162
    const-wide v6, 0x21100000004L

    invoke-virtual {p4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 163
    const-wide v8, 0x11000000001L

    invoke-virtual {p4, v8, v9, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    mul-long/2addr v4, v2

    const-wide/16 v8, 0x400

    div-long/2addr v4, v8

    const-wide v8, 0x10400000002L

    invoke-virtual {p4, v8, v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 165
    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide v2, 0x10400000003L

    invoke-virtual {p4, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 166
    invoke-virtual {p4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 187
    :goto_84
    return-void

    .line 168
    :cond_85
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v6, "-Free: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    mul-long v6, v4, v2

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {p3, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 171
    const-string/jumbo v6, "K / "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    mul-long/2addr v2, v0

    const-wide/16 v6, 0x400

    div-long/2addr v2, v6

    invoke-virtual {p3, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 173
    const-string/jumbo v2, "K total = "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    invoke-virtual {p3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 175
    const-string/jumbo v0, "% free"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b7} :catch_52

    goto :goto_84

    .line 181
    :cond_b8
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "-Error: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DiskStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 69
    :cond_c
    const/16 v0, 0x200

    new-array v3, v0, [B

    .line 70
    const/4 v0, 0x0

    :goto_11
    array-length v1, v3

    if-ge v0, v1, :cond_1a

    int-to-byte v1, v0

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 72
    :cond_1a
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/perftest.tmp"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 78
    :try_start_2c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_b9
    .catchall {:try_start_2c .. :try_end_31} :catchall_c5

    .line 79
    :try_start_31
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_12c
    .catchall {:try_start_31 .. :try_end_34} :catchall_129

    .line 83
    if-eqz v1, :cond_39

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_b7

    .line 86
    :cond_39
    :goto_39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 89
    :cond_46
    const-string/jumbo v1, "--proto"

    invoke-direct {p0, p3, v1}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 90
    const/4 v4, 0x0

    .line 92
    if-eqz v8, :cond_dc

    .line 93
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 94
    const/4 p2, 0x0

    .line 95
    if-eqz v0, :cond_ce

    const/4 v1, 0x1

    :goto_59
    const-wide v10, 0x10d00000001L

    invoke-virtual {v4, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 96
    if-eqz v0, :cond_d0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x10e00000002L

    invoke-virtual {v4, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v3, p2

    .line 112
    :goto_70
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Data"

    .line 113
    const/4 v5, 0x0

    move-object v0, p0

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 114
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Cache"

    .line 115
    const/4 v5, 0x1

    move-object v0, p0

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 116
    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "/system"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "System"

    .line 117
    const/4 v5, 0x2

    move-object v0, p0

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 119
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    .line 120
    if-eqz v1, :cond_101

    const/4 v0, 0x0

    .line 121
    :goto_9f
    if-eqz v8, :cond_11c

    .line 122
    if-eqz v1, :cond_106

    .line 123
    const-wide v0, 0x11000000005L

    .line 124
    const/4 v2, 0x3

    .line 123
    invoke-virtual {v4, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 136
    :cond_ac
    :goto_ac
    if-eqz v8, :cond_125

    .line 137
    invoke-direct {p0, v4}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 142
    :goto_b1
    if-eqz v8, :cond_b6

    .line 143
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 147
    :cond_b6
    return-void

    .line 83
    :catch_b7
    move-exception v1

    goto :goto_39

    .line 80
    :catch_b9
    move-exception v0

    move-object v1, v2

    .line 83
    :goto_bb
    if-eqz v1, :cond_39

    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c2

    goto/16 :goto_39

    :catch_c2
    move-exception v1

    goto/16 :goto_39

    .line 82
    :catchall_c5
    move-exception v0

    .line 83
    :goto_c6
    if-eqz v2, :cond_cb

    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    .line 82
    :cond_cb
    :goto_cb
    throw v0

    .line 83
    :catch_cc
    move-exception v1

    goto :goto_cb

    .line 95
    :cond_ce
    const/4 v1, 0x0

    goto :goto_59

    .line 99
    :cond_d0
    sub-long v0, v2, v6

    const-wide v2, 0x10300000003L

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object v3, p2

    goto :goto_70

    .line 102
    :cond_dc
    if-eqz v0, :cond_ed

    .line 103
    const-string/jumbo v1, "Test-Error: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, p2

    goto :goto_70

    .line 106
    :cond_ed
    const-string/jumbo v0, "Latency: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    sub-long v0, v2, v6

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 108
    const-string/jumbo v0, "ms [512B Data Write]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, p2

    goto/16 :goto_70

    .line 120
    :cond_101
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    goto :goto_9f

    .line 125
    :cond_106
    if-eqz v0, :cond_112

    .line 126
    const-wide v0, 0x11000000005L

    .line 127
    const/4 v2, 0x2

    .line 126
    invoke-virtual {v4, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_ac

    .line 129
    :cond_112
    const-wide v0, 0x11000000005L

    .line 130
    const/4 v2, 0x1

    .line 129
    invoke-virtual {v4, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_ac

    .line 132
    :cond_11c
    if-eqz v1, :cond_ac

    .line 133
    const-string/jumbo v0, "File-based Encryption: true"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ac

    .line 139
    :cond_125
    invoke-direct {p0, v3}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    goto :goto_b1

    .line 82
    :catchall_129
    move-exception v0

    move-object v2, v1

    goto :goto_c6

    .line 80
    :catch_12c
    move-exception v0

    goto :goto_bb
.end method
