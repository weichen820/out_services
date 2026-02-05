.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mStartTime:J

.field private final mUid:I

.field private final mUsageHint:I


# direct methods
.method public constructor <init>(JLandroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 8

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTime:J

    .line 168
    iput-object p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 169
    iput p4, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    .line 170
    iput p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 171
    iput-object p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    const-string/jumbo v1, ", startTime: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTime:J

    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, ", effect: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string/jumbo v1, ", usageHint: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, ", uid: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, ", opPkg: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
