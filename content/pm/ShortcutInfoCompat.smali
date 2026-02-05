.class public Landroid/support/v4/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field private mId:Ljava/lang/String;

.field private mIntents:[Landroid/content/Intent;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLongLabel:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -set1(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set2(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set3(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p1
.end method

.method static synthetic -set4(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Landroid/support/v4/content/pm/ShortcutInfoCompat;[Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set6(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set7(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/pm/ShortcutInfoCompat;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;-><init>()V

    return-void
.end method


# virtual methods
.method addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 73
    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v0, :cond_25

    .line 76
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;)V

    .line 78
    :cond_25
    return-object p1
.end method

.method public getActivity()Landroid/content/ComponentName;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x19
    .end annotation

    .prologue
    .line 54
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v1, :cond_22

    .line 58
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 60
    :cond_22
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 61
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 63
    :cond_2f
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 64
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 66
    :cond_3c
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_45

    .line 67
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 69
    :cond_45
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
