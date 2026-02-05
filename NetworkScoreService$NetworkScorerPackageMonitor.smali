.class Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScorerPackageMonitor"
.end annotation


# instance fields
.field final mPackageToWatch:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 171
    return-void

    .line 174
    :cond_9
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 175
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Evaluating binding for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    const-string/jumbo v2, ", forceUnbind="

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_34
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v0}, Lcom/android/server/NetworkScoreService;->-get2(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 180
    if-nez v0, :cond_55

    .line 183
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "No active scorers available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4f
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v0}, Lcom/android/server/NetworkScoreService;->-wrap1(Lcom/android/server/NetworkScoreService;)V

    .line 195
    :goto_54
    return-void

    .line 186
    :cond_55
    if-eqz p2, :cond_5c

    .line 187
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-wrap2(Lcom/android/server/NetworkScoreService;)V

    .line 189
    :cond_5c
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 190
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    const-string/jumbo v3, " if needed."

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_87
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1, v0}, Lcom/android/server/NetworkScoreService;->-wrap0(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V

    goto :goto_54
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 9

    .prologue
    .line 155
    if-eqz p4, :cond_f

    .line 156
    const/4 v0, 0x0

    array-length v1, p2

    :goto_4
    if-ge v0, v1, :cond_f

    aget-object v2, p2, v0

    .line 157
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 160
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method
