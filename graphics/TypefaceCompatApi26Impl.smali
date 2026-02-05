.class public Landroid/support/v4/graphics/TypefaceCompatApi26Impl;
.super Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.source "TypefaceCompatApi26Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String; = "abortCreation"

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String; = "addFontFromAssetManager"

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String; = "addFontFromBuffer"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final FREEZE_METHOD:Ljava/lang/String; = "freeze"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi26Impl"

.field private static final sAbortCreation:Ljava/lang/reflect/Method;

.field private static final sAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field private static final sAddFontFromBuffer:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field private static final sFreeze:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 81
    :try_start_1
    const-string/jumbo v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 83
    const-string/jumbo v0, "addFontFromAssetManager"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    .line 84
    const-class v3, Landroid/content/res/AssetManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 85
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 83
    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 86
    const-string/jumbo v0, "addFontFromBuffer"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    .line 87
    const-class v3, Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 88
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 86
    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 89
    const-string/jumbo v0, "freeze"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 90
    const-string/jumbo v0, "abortCreation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    const/4 v0, 0x1

    invoke-static {v7, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    const-class v8, Landroid/graphics/Typeface;

    const-string/jumbo v9, "createFromFamiliesWithDefault"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v10, v11

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v0, v10, v11

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v0, v10, v11

    .line 93
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_9f} :catch_b4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_9f} :catch_b4

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 107
    :goto_a5
    sput-object v5, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 108
    sput-object v6, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamily:Ljava/lang/Class;

    .line 109
    sput-object v4, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    .line 110
    sput-object v3, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromBuffer:Ljava/lang/reflect/Method;

    .line 111
    sput-object v2, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFreeze:Ljava/lang/reflect/Method;

    .line 112
    sput-object v1, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAbortCreation:Ljava/lang/reflect/Method;

    .line 113
    sput-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 53
    return-void

    .line 96
    :catch_b4
    move-exception v0

    .line 97
    const-string/jumbo v2, "TypefaceCompatApi26Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to collect necessary methods for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 105
    goto :goto_a5
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;-><init>()V

    return-void
.end method

.method private static abortCreation(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 201
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAbortCreation:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    return v0

    .line 203
    :catch_10
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z
    .registers 10

    .prologue
    .line 145
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 147
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 145
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_42} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_42} :catch_44

    move-result v0

    return v0

    .line 149
    :catch_44
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .registers 9

    .prologue
    .line 161
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromBuffer:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 162
    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 161
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result v0

    return v0

    .line 164
    :catch_2c
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 5

    .prologue
    .line 175
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 177
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 178
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 177
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v0

    .line 179
    :catch_2b
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static freeze(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 189
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFreeze:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    return v0

    .line 191
    :catch_10
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isFontFamilyPrivateAPIAvailable()Z
    .registers 2

    .prologue
    .line 120
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    .line 121
    const-string/jumbo v0, "TypefaceCompatApi26Impl"

    const-string/jumbo v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_d
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static newFamily()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 132
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    .line 133
    :catch_a
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 212
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 215
    :cond_d
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v1

    .line 216
    invoke-virtual {p2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v7

    array-length v8, v7

    move v6, v3

    :goto_17
    if-ge v6, v8, :cond_3b

    aget-object v0, v7, v6

    .line 218
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v5, 0x1

    :goto_2a
    move-object v0, p1

    .line 218
    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_37

    .line 220
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    .line 221
    return-object v9

    :cond_35
    move v5, v3

    .line 219
    goto :goto_2a

    .line 216
    :cond_37
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_17

    .line 224
    :cond_3b
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 225
    return-object v9

    .line 227
    :cond_42
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 15
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_6
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_66

    .line 240
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 242
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    :try_start_16
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 244
    new-instance v3, Landroid/graphics/Typeface$Builder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v4

    .line 244
    invoke-virtual {v3, v4}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v3

    .line 246
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v0

    .line 244
    invoke-virtual {v3, v0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_3d} :catch_4c
    .catchall {:try_start_16 .. :try_end_3d} :catchall_ba

    move-result-object v0

    .line 250
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_49
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_46

    :cond_43
    :goto_43
    if-eqz v2, :cond_4b

    :try_start_45
    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_46} :catch_46

    .line 248
    :catch_46
    move-exception v0

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 250
    :catch_49
    move-exception v2

    goto :goto_43

    .line 244
    :cond_4b
    return-object v0

    .line 250
    :catch_4c
    move-exception v0

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :goto_52
    if-eqz v1, :cond_57

    :try_start_54
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_5a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_46

    :cond_57
    :goto_57
    if-eqz v2, :cond_65

    :try_start_59
    throw v2

    :catch_5a
    move-exception v1

    if-nez v2, :cond_5f

    move-object v2, v1

    goto :goto_57

    :cond_5f
    if-eq v2, v1, :cond_57

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_57

    :cond_65
    throw v0
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_66} :catch_46

    .line 252
    :cond_66
    invoke-static {p1, p3, p2}, Landroid/support/v4/provider/FontsContractCompat;->prepareFontData(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v3

    .line 254
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v4

    .line 255
    const/4 v1, 0x0

    .line 256
    const/4 v0, 0x0

    array-length v5, p3

    move v2, v0

    :goto_72
    if-ge v2, v5, :cond_a6

    aget-object v6, p3, v2

    .line 257
    invoke-virtual {v6}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 258
    if-nez v0, :cond_88

    move v0, v1

    .line 256
    :goto_83
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_72

    .line 262
    :cond_88
    invoke-virtual {v6}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_a2

    const/4 v1, 0x1

    .line 261
    :goto_97
    invoke-static {v4, v0, v7, v8, v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v0

    .line 263
    if-nez v0, :cond_a4

    .line 264
    invoke-static {v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_a2
    const/4 v1, 0x0

    goto :goto_97

    .line 267
    :cond_a4
    const/4 v0, 0x1

    goto :goto_83

    .line 269
    :cond_a6
    if-nez v1, :cond_ad

    .line 270
    invoke-static {v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 273
    :cond_ad
    invoke-static {v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 274
    const/4 v0, 0x0

    return-object v0

    .line 276
    :cond_b5
    invoke-static {v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 250
    :catchall_ba
    move-exception v0

    goto :goto_52
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 286
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 287
    invoke-super/range {p0 .. p5}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 289
    :cond_d
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v1

    .line 291
    const/4 v3, 0x0

    move-object v0, p1

    move-object v2, p4

    move v5, v4

    .line 290
    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 293
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    .line 294
    return-object v6

    .line 296
    :cond_1f
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 297
    return-object v6

    .line 299
    :cond_26
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
