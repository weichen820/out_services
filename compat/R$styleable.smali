.class public final Landroid/support/compat/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static FontFamilyFont_font:I

.field public static FontFamilyFont_fontStyle:I

.field public static FontFamilyFont_fontWeight:I

.field public static FontFamily_fontProviderAuthority:I

.field public static FontFamily_fontProviderCerts:I

.field public static FontFamily_fontProviderFetchStrategy:I

.field public static FontFamily_fontProviderFetchTimeout:I

.field public static FontFamily_fontProviderPackage:I

.field public static FontFamily_fontProviderQuery:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 345
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Landroid/support/compat/R$styleable;->FontFamily:[I

    .line 359
    sput v1, Landroid/support/compat/R$styleable;->FontFamily_fontProviderAuthority:I

    .line 376
    sput v2, Landroid/support/compat/R$styleable;->FontFamily_fontProviderCerts:I

    .line 402
    sput v3, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    .line 421
    const/4 v0, 0x3

    sput v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    .line 433
    const/4 v0, 0x4

    sput v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderPackage:I

    .line 445
    const/4 v0, 0x5

    sput v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderQuery:I

    .line 462
    filled-new-array {v1, v1, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/compat/R$styleable;->FontFamilyFont:[I

    .line 478
    sput v1, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    .line 498
    sput v2, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    .line 512
    sput v3, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    .line 323
    return-void

    .line 345
    nop

    :array_28
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
