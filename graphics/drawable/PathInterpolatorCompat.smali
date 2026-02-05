.class public Landroid/support/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final MAX_NUM_POINTS:I = 0xbb8

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/support/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    .line 72
    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private initCubic(FFFF)V
    .registers 12

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 129
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 130
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 131
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 132
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 133
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .registers 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/4 v0, 0x0

    .line 136
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, p1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 138
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 139
    const v1, 0x3b03126f    # 0.002f

    div-float v1, v2, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xbb8

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 141
    if-gtz v5, :cond_3b

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The Path has a invalid length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3b
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    .line 146
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    .line 148
    const/4 v1, 0x2

    new-array v3, v1, [F

    move v1, v0

    .line 149
    :goto_47
    if-ge v1, v5, :cond_63

    .line 150
    int-to-float v6, v1

    mul-float/2addr v6, v2

    add-int/lit8 v7, v5, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 151
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v3, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 153
    iget-object v6, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v7, v3, v0

    aput v7, v6, v1

    .line 154
    iget-object v6, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v7, 0x1

    aget v7, v3, v7

    aput v7, v6, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 157
    :cond_63
    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v8

    if-gtz v1, :cond_7d

    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v8

    if-lez v1, :cond_cc

    .line 159
    :cond_7d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v0

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string/jumbo v3, ","

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v0, v3, v0

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string/jumbo v2, " end:"

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    iget-object v2, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string/jumbo v2, ","

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v2, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_cc
    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v2, v5, -0x1

    aget v1, v1, v2

    sub-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v8

    if-gtz v1, :cond_7d

    .line 158
    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v2, v5, -0x1

    aget v1, v1, v2

    sub-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v8

    if-gtz v1, :cond_7d

    .line 165
    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    .line 167
    :goto_ef
    if-ge v0, v5, :cond_11e

    .line 168
    iget-object v6, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v2, v1, 0x1

    aget v1, v6, v1

    .line 169
    cmpg-float v3, v1, v3

    if-gez v3, :cond_115

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The Path cannot loop back on itself, x :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_115
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aput v1, v3, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    goto :goto_ef

    .line 176
    :cond_11e
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_12d
    return-void
.end method

.method private initQuad(FF)V
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 123
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 125
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 126
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 81
    const-string/jumbo v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 82
    const-string/jumbo v0, "pathData"

    .line 83
    const/4 v1, 0x4

    .line 82
    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 85
    if-nez v1, :cond_32

    .line 86
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The path is null, which is created from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_32
    invoke-direct {p0, v1}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 119
    :goto_35
    return-void

    .line 91
    :cond_36
    const-string/jumbo v0, "controlX1"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 92
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_48
    const-string/jumbo v0, "controlY1"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 94
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_5a
    const-string/jumbo v0, "controlX1"

    .line 97
    const/4 v1, 0x0

    .line 96
    invoke-static {p1, p2, v0, v1, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 98
    const-string/jumbo v1, "controlY1"

    .line 99
    const/4 v2, 0x1

    .line 98
    invoke-static {p1, p2, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    .line 101
    const-string/jumbo v2, "controlX2"

    invoke-static {p2, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    .line 102
    const-string/jumbo v3, "controlY2"

    invoke-static {p2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 104
    if-eq v2, v3, :cond_83

    .line 105
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_83
    if-nez v2, :cond_89

    .line 110
    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initQuad(FF)V

    goto :goto_35

    .line 112
    :cond_89
    const-string/jumbo v2, "controlX2"

    .line 113
    const/4 v3, 0x2

    .line 112
    invoke-static {p1, p2, v2, v3, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 114
    const-string/jumbo v3, "controlY2"

    .line 115
    const/4 v4, 0x3

    .line 114
    invoke-static {p1, p2, v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 116
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initCubic(FFFF)V

    goto :goto_35
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 194
    cmpg-float v0, p1, v4

    if-gtz v0, :cond_8

    .line 195
    return v4

    .line 196
    :cond_8
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_d

    .line 197
    return v1

    .line 200
    :cond_d
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 203
    :goto_13
    sub-int v0, v1, v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2c

    .line 204
    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    .line 205
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_28

    move v1, v2

    :goto_25
    move v2, v1

    move v1, v0

    goto :goto_13

    :cond_28
    move v5, v1

    move v1, v0

    move v0, v5

    .line 208
    goto :goto_25

    .line 212
    :cond_2c
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v0, v0, v1

    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v2

    sub-float/2addr v0, v3

    .line 213
    cmpl-float v3, v0, v4

    if-nez v3, :cond_3e

    .line 214
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v0, v0, v2

    return v0

    .line 217
    :cond_3e
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    .line 218
    div-float v0, v3, v0

    .line 220
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v2, v3, v2

    .line 221
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v3, v1

    .line 222
    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
