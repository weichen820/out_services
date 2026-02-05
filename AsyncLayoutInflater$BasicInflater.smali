.class Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;
.super Landroid/view/LayoutInflater;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicInflater"
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "android.widget."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "android.webkit."

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "android.app."

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 125
    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 133
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v1, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 144
    :try_start_8
    invoke-virtual {p0, p1, v3, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_f

    move-result-object v3

    .line 145
    if-eqz v3, :cond_10

    .line 146
    return-object v3

    .line 148
    :catch_f
    move-exception v3

    .line 142
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 154
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
