.class public Landroid/support/v7/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;,
        Landroid/support/v7/view/SupportMenuInflater$MenuState;
    }
.end annotation


# static fields
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field final mActionViewConstructorArguments:[Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 84
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 83
    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 100
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 229
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 230
    return-object p1

    .line 232
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_14

    .line 233
    nop

    nop

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 235
    :cond_14
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 143
    new-instance v7, Landroid/support/v7/view/SupportMenuInflater$MenuState;

    invoke-direct {v7, p0, p3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 152
    :goto_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 156
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :cond_20
    move v4, v6

    move v2, v6

    move v1, v0

    move-object v0, v5

    .line 166
    :goto_24
    if-nez v4, :cond_e4

    .line 167
    packed-switch v1, :pswitch_data_e8

    .line 217
    :cond_29
    :goto_29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_24

    .line 160
    :cond_2e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expecting menu, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 163
    if-eq v0, v3, :cond_20

    goto :goto_c

    .line 169
    :pswitch_4f
    if-nez v2, :cond_29

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string/jumbo v8, "group"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 175
    invoke-virtual {v7, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    move v1, v2

    :goto_62
    move v2, v1

    .line 188
    goto :goto_29

    .line 176
    :cond_64
    const-string/jumbo v8, "item"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 177
    invoke-virtual {v7, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    move v1, v2

    goto :goto_62

    .line 178
    :cond_72
    const-string/jumbo v8, "menu"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 180
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v1

    .line 183
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    move v1, v2

    goto :goto_62

    :cond_84
    move-object v0, v1

    move v1, v3

    .line 186
    goto :goto_62

    .line 191
    :pswitch_87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    if-eqz v2, :cond_99

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    move v0, v4

    move-object v1, v5

    move v2, v6

    :goto_96
    move v4, v0

    move-object v0, v1

    .line 211
    goto :goto_29

    .line 195
    :cond_99
    const-string/jumbo v8, "group"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 196
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    move-object v1, v0

    move v0, v4

    goto :goto_96

    .line 197
    :cond_a8
    const-string/jumbo v8, "item"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 200
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result v1

    if-nez v1, :cond_e5

    .line 201
    iget-object v1, v7, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_c9

    .line 202
    iget-object v1, v7, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v1

    .line 201
    if-eqz v1, :cond_c9

    .line 203
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-object v1, v0

    move v0, v4

    goto :goto_96

    .line 205
    :cond_c9
    invoke-virtual {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addItem()V

    move-object v1, v0

    move v0, v4

    goto :goto_96

    .line 208
    :cond_cf
    const-string/jumbo v8, "menu"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    move-object v1, v0

    move v0, v3

    .line 209
    goto :goto_96

    .line 214
    :pswitch_db
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_e4
    return-void

    :cond_e5
    move-object v1, v0

    move v0, v4

    goto :goto_96

    .line 167
    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_db
        :pswitch_4f
        :pswitch_87
    .end packed-switch
.end method


# virtual methods
.method getRealOwner()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 223
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 225
    :cond_c
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 7
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 117
    instance-of v0, p2, Landroid/support/v4/internal/view/SupportMenu;

    if-nez v0, :cond_9

    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    return-void

    .line 124
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 127
    invoke-direct {p0, v1, v0, p2}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_31
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2a

    .line 133
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 135
    :cond_1f
    return-void

    .line 130
    :catch_20
    move-exception v0

    .line 131
    :try_start_21
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2a

    .line 132
    :catchall_2a
    move-exception v0

    .line 133
    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 132
    :cond_30
    throw v0

    .line 128
    :catch_31
    move-exception v0

    .line 129
    :try_start_32
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2a
.end method
