.class public Landroid/support/v4/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompat$AttributeContentType;,
        Landroid/support/v4/media/AudioAttributesCompat$AttributeUsage;,
        Landroid/support/v4/media/AudioAttributesCompat$AudioManagerHidden;,
        Landroid/support/v4/media/AudioAttributesCompat$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field private static final FLAG_ALL:I = 0x3ff

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field private static final FLAG_BEACON:I = 0x8

.field private static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field private static final FLAG_BYPASS_MUTE:I = 0x80

.field private static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field private static final FLAG_HW_HOTWORD:I = 0x20

.field private static final FLAG_LOW_LATENCY:I = 0x100

.field private static final FLAG_SCO:I = 0x4

.field private static final FLAG_SECURE:I = 0x2

.field private static final SDK_USAGES:[I

.field private static final SUPPRESSIBLE_CALL:I = 0x2

.field private static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field private static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field private static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field private static sForceLegacyBehavior:Z


# instance fields
.field private mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

.field mContentType:I

.field mFlags:I

.field mLegacyStream:Ljava/lang/Integer;

.field mUsage:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/media/AudioAttributesCompat;Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    return-object p1
.end method

.method static synthetic -wrap0(I)I
    .registers 2

    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompat;->usageForStreamType(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 169
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 173
    const/16 v1, 0x8

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 175
    const/16 v1, 0x9

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SDK_USAGES:[I

    .line 64
    return-void

    .line 179
    :array_3a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    .line 231
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    .line 232
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/AudioAttributesCompat;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    return-void
.end method

.method public static setForceLegacyBehavior(Z)V
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 695
    sput-boolean p0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    .line 696
    return-void
.end method

.method static toVolumeStreamType(ZII)I
    .registers 8

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v0, :cond_d

    .line 706
    if-eqz p0, :cond_b

    :goto_a
    return v0

    .line 708
    :cond_b
    const/4 v0, 0x7

    goto :goto_a

    .line 710
    :cond_d
    and-int/lit8 v3, p1, 0x4

    if-ne v3, v4, :cond_17

    .line 711
    if-eqz p0, :cond_15

    move v0, v1

    :goto_14
    return v0

    .line 713
    :cond_15
    const/4 v0, 0x6

    goto :goto_14

    .line 717
    :cond_17
    packed-switch p2, :pswitch_data_56

    .line 748
    :pswitch_1a
    if-eqz p0, :cond_55

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :pswitch_3d
    return v2

    .line 724
    :pswitch_3e
    return v0

    .line 726
    :pswitch_3f
    return v1

    .line 728
    :pswitch_40
    if-eqz p0, :cond_43

    :goto_42
    return v1

    .line 730
    :cond_43
    const/16 v1, 0x8

    goto :goto_42

    .line 732
    :pswitch_46
    return v4

    .line 734
    :pswitch_47
    const/4 v0, 0x2

    return v0

    .line 740
    :pswitch_49
    const/4 v0, 0x5

    return v0

    .line 742
    :pswitch_4b
    const/16 v0, 0xa

    return v0

    .line 744
    :pswitch_4e
    if-eqz p0, :cond_53

    .line 745
    const/high16 v0, -0x80000000

    .line 744
    :goto_52
    return v0

    :cond_53
    move v0, v2

    .line 746
    goto :goto_52

    .line 752
    :cond_55
    return v2

    .line 717
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_3d
        :pswitch_3f
        :pswitch_40
        :pswitch_46
        :pswitch_49
        :pswitch_47
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_4b
        :pswitch_3d
        :pswitch_3e
        :pswitch_3d
        :pswitch_1a
        :pswitch_3d
    .end packed-switch
.end method

.method static toVolumeStreamType(ZLandroid/support/v4/media/AudioAttributesCompat;)I
    .registers 4

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method private static usageForStreamType(I)I
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 662
    packed-switch p0, :pswitch_data_18

    .line 684
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 664
    :pswitch_6
    return v0

    .line 667
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 669
    :pswitch_a
    const/4 v0, 0x6

    return v0

    .line 671
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 673
    :pswitch_e
    const/4 v0, 0x4

    return v0

    .line 675
    :pswitch_10
    const/4 v0, 0x5

    return v0

    .line 677
    :pswitch_12
    return v0

    .line 679
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 681
    :pswitch_15
    const/16 v0, 0xb

    return v0

    .line 662
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_7
        :pswitch_13
        :pswitch_4
        :pswitch_15
    .end packed-switch
.end method

.method static usageToString(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 616
    packed-switch p0, :pswitch_data_ae

    .line 650
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 618
    :pswitch_1d
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 620
    :pswitch_26
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 622
    :pswitch_2f
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 624
    :pswitch_38
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 626
    :pswitch_41
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ALARM"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 628
    :pswitch_4a
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 630
    :pswitch_53
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_RINGTONE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 632
    :pswitch_5c
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 634
    :pswitch_65
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 636
    :pswitch_6e
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 638
    :pswitch_77
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 640
    :pswitch_80
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 642
    :pswitch_89
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 644
    :pswitch_92
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 646
    :pswitch_9b
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_GAME"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 648
    :pswitch_a4
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 616
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
        :pswitch_38
        :pswitch_41
        :pswitch_4a
        :pswitch_53
        :pswitch_5c
        :pswitch_65
        :pswitch_6e
        :pswitch_77
        :pswitch_80
        :pswitch_89
        :pswitch_92
        :pswitch_9b
        :pswitch_3
        :pswitch_a4
    .end packed-switch
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    .line 316
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    .line 318
    check-cast p0, Landroid/media/AudioAttributes;

    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->wrap(Landroid/media/AudioAttributes;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    move-result-object v1

    .line 317
    iput-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    .line 319
    return-object v0

    .line 321
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 759
    if-ne p0, p1, :cond_5

    return v0

    .line 760
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    :cond_11
    return v1

    .line 762
    :cond_12
    check-cast p1, Landroid/support/v4/media/AudioAttributesCompat;

    .line 764
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_33

    .line 765
    sget-boolean v2, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v2, v2, 0x1

    .line 764
    if-eqz v2, :cond_33

    .line 766
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v2, :cond_33

    .line 767
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 770
    :cond_33
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getContentType()I

    move-result v3

    if-ne v2, v3, :cond_5e

    .line 771
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v3

    if-ne v2, v3, :cond_5e

    .line 772
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v3

    if-ne v2, v3, :cond_5e

    .line 773
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v2, :cond_58

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    iget-object v1, p1, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 770
    :cond_57
    :goto_57
    return v0

    .line 774
    :cond_58
    iget-object v2, p1, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v2, :cond_57

    move v0, v1

    goto :goto_57

    :cond_5e
    move v0, v1

    .line 770
    goto :goto_57
.end method

.method public getContentType()I
    .registers 3

    .prologue
    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 333
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    .line 332
    if-eqz v0, :cond_1b

    .line 334
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_1b

    .line 335
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    return v0

    .line 337
    :cond_1b
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .registers 4

    .prologue
    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 363
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    .line 362
    if-eqz v0, :cond_1b

    .line 364
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_1b

    .line 365
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    return v0

    .line 367
    :cond_1b
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v1

    .line 369
    const/4 v2, 0x6

    if-ne v1, v2, :cond_29

    .line 370
    or-int/lit8 v0, v0, 0x4

    .line 374
    :cond_26
    :goto_26
    and-int/lit16 v0, v0, 0x111

    return v0

    .line 371
    :cond_29
    const/4 v2, 0x7

    if-ne v1, v2, :cond_26

    .line 372
    or-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public getLegacyStreamType()I
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 290
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 296
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 297
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_1c

    .line 298
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21;->toLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)I

    move-result v0

    return v0

    .line 304
    :cond_1c
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public getUsage()I
    .registers 3

    .prologue
    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 348
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    .line 347
    if-eqz v0, :cond_1b

    .line 349
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_1b

    .line 350
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0

    .line 352
    :cond_1b
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 3

    .prologue
    .line 253
    if-nez p0, :cond_b

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid null audio attributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_28

    .line 257
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    .line 256
    if-eqz v0, :cond_28

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    return v0

    .line 261
    :cond_28
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZLandroid/support/v4/media/AudioAttributesCompat;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 583
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    .line 582
    if-eqz v0, :cond_1b

    .line 584
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_1b

    .line 585
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->hashCode()I

    move-result v0

    return v0

    .line 588
    :cond_1b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 595
    const-string/jumbo v1, " audioattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 597
    :cond_21
    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v1, :cond_37

    .line 598
    const-string/jumbo v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    const-string/jumbo v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_37
    const-string/jumbo v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 602
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 603
    const-string/jumbo v2, " content="

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 604
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 605
    const-string/jumbo v2, " flags=0x"

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 606
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_c

    .line 275
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 277
    :cond_c
    return-object v1
.end method

.method usageToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
