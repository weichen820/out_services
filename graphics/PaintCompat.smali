.class public final Landroid/support/v4/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .registers 11
    .param p0    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_e

    .line 45
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 47
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 49
    if-ne v3, v8, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 51
    return v8

    .line 54
    :cond_1f
    const-string/jumbo v2, "\udb3f\udffd"

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 55
    const-string/jumbo v2, "m"

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 57
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 59
    cmpl-float v6, v5, v0

    if-nez v6, :cond_36

    .line 61
    return v1

    .line 64
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    if-le v6, v8, :cond_62

    .line 67
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    cmpl-float v2, v5, v2

    if-lez v2, :cond_48

    .line 68
    return v1

    :cond_48
    move v2, v0

    move v0, v1

    .line 83
    :goto_4a
    if-ge v0, v3, :cond_5d

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 85
    add-int v7, v0, v6

    invoke-virtual {p0, p1, v0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    add-float/2addr v2, v7

    .line 86
    add-int/2addr v0, v6

    goto :goto_4a

    .line 88
    :cond_5d
    cmpl-float v0, v5, v2

    if-ltz v0, :cond_62

    .line 89
    return v1

    .line 93
    :cond_62
    cmpl-float v0, v5, v4

    if-eqz v0, :cond_67

    .line 95
    return v8

    .line 100
    :cond_67
    invoke-static {}, Landroid/support/v4/graphics/PaintCompat;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v2

    .line 101
    const-string/jumbo v4, "\udb3f\udffd"

    const-string/jumbo v0, "\udb3f\udffd"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 102
    iget-object v0, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    iget-object v0, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 108
    if-nez v0, :cond_1f

    .line 109
    new-instance v0, Landroid/support/v4/util/Pair;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    sget-object v1, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 115
    :goto_1e
    return-object v0

    .line 112
    :cond_1f
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 113
    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1e
.end method
