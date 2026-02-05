.class abstract Lcom/android/server/RescueParty$Threshold;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Threshold"
.end annotation


# instance fields
.field private final triggerCount:I

.field private final triggerWindow:J

.field private final uid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/RescueParty$Threshold;)I
    .registers 2

    iget v0, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    return v0
.end method

.method public constructor <init>(IIJ)V
    .registers 6

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    .line 234
    iput p2, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    .line 235
    iput-wide p3, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    .line 236
    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getStart()J
.end method

.method public incrementAndTest()Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 248
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getStart()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 249
    iget-wide v6, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_19

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 251
    invoke-virtual {p0, v2, v3}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 252
    return v1

    .line 254
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 256
    iget v3, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 257
    const-string/jumbo v3, "RescueParty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Noticed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " events for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in last "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 258
    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 257
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 258
    const-string/jumbo v5, " sec"

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v3, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    if-lt v2, v3, :cond_68

    :goto_67
    return v0

    :cond_68
    move v0, v1

    goto :goto_67
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 240
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 241
    return-void
.end method

.method public abstract setCount(I)V
.end method

.method public abstract setStart(J)V
.end method
