.class public final Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    packed-switch p0, :pswitch_data_18

    .line 310
    :pswitch_3
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 302
    :pswitch_7
    const-string/jumbo v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    return-object v0

    .line 304
    :pswitch_b
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    return-object v0

    .line 306
    :pswitch_f
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 308
    :pswitch_13
    const-string/jumbo v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    return-object v0

    .line 300
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_13
    .end packed-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_c
    if-lez p0, :cond_49

    .line 213
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int v1, v3, v1

    .line 214
    not-int v2, v1

    and-int/2addr p0, v2

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_22

    .line 216
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_22
    sparse-switch v1, :sswitch_data_54

    goto :goto_c

    .line 229
    :sswitch_26
    const-string/jumbo v1, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 220
    :sswitch_2d
    const-string/jumbo v1, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 223
    :sswitch_34
    const-string/jumbo v1, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 226
    :sswitch_3b
    const-string/jumbo v1, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 232
    :sswitch_42
    const-string/jumbo v1, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 236
    :cond_49
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_34
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_42
        0x10 -> :sswitch_3b
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    sparse-switch p0, :sswitch_data_1e

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 251
    :sswitch_5
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    .line 253
    :sswitch_9
    const-string/jumbo v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    return-object v0

    .line 255
    :sswitch_d
    const-string/jumbo v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    return-object v0

    .line 257
    :sswitch_11
    const-string/jumbo v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 259
    :sswitch_15
    const-string/jumbo v0, "FLAG_REPORT_VIEW_IDS"

    return-object v0

    .line 261
    :sswitch_19
    const-string/jumbo v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    return-object v0

    .line 249
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_9
        0x4 -> :sswitch_d
        0x8 -> :sswitch_11
        0x10 -> :sswitch_15
        0x20 -> :sswitch_19
    .end sparse-switch
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 3

    .prologue
    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    .line 281
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0

    .line 284
    :cond_b
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 194
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_b
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
