.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field private static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

.field private final mAdditionalSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4213
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    .line 4216
    if-nez p1, :cond_15

    .line 4217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "methodMap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4219
    :cond_15
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 4220
    if-nez p2, :cond_76

    .line 4221
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4223
    :goto_25
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "inputmethod"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4224
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_59

    .line 4225
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t create dir.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    :cond_59
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "subtypes.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4228
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 4229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 4232
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 4231
    invoke-static {v0, v1, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 4237
    :goto_75
    return-void

    .line 4222
    :cond_76
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 4235
    :cond_7b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 4234
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    goto :goto_75
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 4240
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4241
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4243
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 4242
    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 4245
    return-void

    .line 4240
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4330
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    .line 4331
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    .line 4332
    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_191
    .catchall {:try_start_a .. :try_end_d} :catchall_18c

    move-result-object v3

    .line 4333
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 4334
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4335
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4337
    :cond_1e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    .line 4338
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 4339
    :cond_28
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4340
    const-string/jumbo v2, "subtypes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 4341
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Xml doesn\'t start with subtypes"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3e} :catch_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_99

    .line 4400
    :catch_3e
    move-exception v1

    move-object v2, v3

    :goto_40
    :try_start_40
    throw v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_17d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_4d} :catch_50
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4d} :catch_50

    :cond_4d
    :goto_4d
    if-eqz v2, :cond_18a

    :try_start_4f
    throw v2
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_50} :catch_50
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_50} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_50} :catch_50

    .line 4397
    :catch_50
    move-exception v1

    .line 4398
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Error reading subtypes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4399
    return-void

    .line 4343
    :cond_5b
    :try_start_5b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 4344
    const/4 v2, 0x0

    .line 4345
    const/4 v1, 0x0

    .line 4346
    :cond_61
    :goto_61
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6e

    .line 4347
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_173

    :cond_6e
    const/4 v8, 0x1

    if-eq v7, v8, :cond_173

    .line 4348
    const/4 v8, 0x2

    if-ne v7, v8, :cond_61

    .line 4350
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4351
    const-string/jumbo v8, "imi"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 4352
    const-string/jumbo v2, "id"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 4354
    const-string/jumbo v7, "InputMethodManagerService"

    const-string/jumbo v8, "Invalid imi id found in subtypes.xml"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 4400
    :catchall_99
    move-exception v1

    move-object v2, v4

    goto :goto_48

    .line 4357
    :cond_9c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4358
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 4359
    :cond_a7
    const-string/jumbo v8, "subtype"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 4360
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b8

    if-nez v1, :cond_d3

    .line 4361
    :cond_b8
    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IME uninstalled or not valid.: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 4365
    :cond_d3
    const-string/jumbo v7, "icon"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4364
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4367
    const-string/jumbo v8, "label"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4366
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4369
    const-string/jumbo v9, "imeSubtypeLocale"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4371
    const-string/jumbo v10, "languageTag"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4373
    const-string/jumbo v11, "imeSubtypeMode"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4375
    const-string/jumbo v12, "imeSubtypeExtraValue"

    const/4 v13, 0x0

    invoke-interface {v5, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4376
    const-string/jumbo v13, "1"

    .line 4377
    const-string/jumbo v14, "isAuxiliary"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4376
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 4378
    const-string/jumbo v14, "1"

    .line 4379
    const-string/jumbo v15, "isAsciiCapable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4378
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 4380
    new-instance v15, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    invoke-virtual {v15, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 4390
    const-string/jumbo v8, "subtypeId"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4391
    if-eqz v8, :cond_16a

    .line 4392
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 4394
    :cond_16a
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_171} :catch_3e
    .catchall {:try_start_5b .. :try_end_171} :catchall_99

    goto/16 :goto_61

    .line 4400
    :cond_173
    if-eqz v3, :cond_178

    :try_start_175
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_178} :catch_17b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_175 .. :try_end_178} :catch_50
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_175 .. :try_end_178} :catch_50

    :cond_178
    :goto_178
    if-eqz v4, :cond_18b

    :try_start_17a
    throw v4

    :catch_17b
    move-exception v4

    goto :goto_178

    :catch_17d
    move-exception v3

    if-nez v2, :cond_183

    move-object v2, v3

    goto/16 :goto_4d

    :cond_183
    if-eq v2, v3, :cond_4d

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    :cond_18a
    throw v1
    :try_end_18b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17a .. :try_end_18b} :catch_50
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_18b} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_17a .. :try_end_18b} :catch_50

    .line 4401
    :cond_18b
    return-void

    .line 4400
    :catchall_18c
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_48

    :catch_191
    move-exception v1

    goto/16 :goto_40
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4277
    if-eqz p2, :cond_7f

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7f

    move v2, v3

    .line 4280
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_154

    move-result-object v5

    .line 4281
    :try_start_10
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4282
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4283
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4284
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4285
    const-string/jumbo v0, "subtypes"

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4286
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4287
    if-eqz v2, :cond_81

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_81

    .line 4288
    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IME uninstalled or not valid.: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6d} :catch_6e

    goto :goto_3d

    .line 4320
    :catch_6e
    move-exception v0

    move-object v1, v5

    .line 4321
    :goto_70
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Error writing subtypes"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4322
    if-eqz v1, :cond_7e

    .line 4323
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4326
    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    move v2, v4

    .line 4277
    goto :goto_c

    .line 4291
    :cond_81
    :try_start_81
    const-string/jumbo v1, "imi"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4292
    const-string/jumbo v1, "id"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4293
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move v7, v4

    .line 4295
    :goto_9a
    if-ge v7, v10, :cond_13c

    .line 4296
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4297
    const-string/jumbo v6, "subtype"

    const/4 v11, 0x0

    invoke-interface {v8, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4298
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v6

    if-eqz v6, :cond_be

    .line 4299
    const-string/jumbo v6, "subtypeId"

    .line 4300
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 4299
    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4302
    :cond_be
    const-string/jumbo v6, "icon"

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4303
    const-string/jumbo v6, "label"

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4304
    const-string/jumbo v6, "imeSubtypeLocale"

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4305
    const-string/jumbo v6, "languageTag"

    .line 4306
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 4305
    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4307
    const-string/jumbo v6, "imeSubtypeMode"

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4308
    const-string/jumbo v6, "imeSubtypeExtraValue"

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4309
    const-string/jumbo v11, "isAuxiliary"

    .line 4310
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v6

    if-eqz v6, :cond_138

    move v6, v3

    :goto_112
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4309
    const/4 v12, 0x0

    invoke-interface {v8, v12, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4311
    const-string/jumbo v6, "isAsciiCapable"

    .line 4312
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v1

    if-eqz v1, :cond_13a

    move v1, v3

    :goto_124
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4311
    const/4 v11, 0x0

    invoke-interface {v8, v11, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4313
    const-string/jumbo v1, "subtype"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4295
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_9a

    :cond_138
    move v6, v4

    .line 4310
    goto :goto_112

    :cond_13a
    move v1, v4

    .line 4312
    goto :goto_124

    .line 4315
    :cond_13c
    const-string/jumbo v0, "imi"

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3d

    .line 4317
    :cond_145
    const-string/jumbo v0, "subtypes"

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4318
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4319
    invoke-virtual {p1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_152} :catch_6e

    goto/16 :goto_7e

    .line 4320
    :catch_154
    move-exception v0

    goto/16 :goto_70
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11

    .prologue
    .line 4249
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4250
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4251
    array-length v3, p2

    .line 4252
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_4b

    .line 4253
    aget-object v4, p2, v0

    .line 4254
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 4255
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4252
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4257
    :cond_1a
    const-string/jumbo v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4258
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 4257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4258
    const-string/jumbo v7, ", "

    .line 4257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4258
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    .line 4257
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_48

    goto :goto_17

    .line 4249
    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4261
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 4262
    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_48

    monitor-exit v1

    .line 4265
    return-void
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4269
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 4268
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
