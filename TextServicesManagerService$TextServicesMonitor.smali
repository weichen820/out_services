.class final Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 209
    :goto_11
    return v0

    .line 205
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 7

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    return-void

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_e
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 221
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get6(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v5}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v5

    .line 220
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/TextServicesManagerService;->-wrap2(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 224
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-wrap1(Lcom/android/server/TextServicesManagerService;)Z
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_76

    move-result v2

    if-nez v2, :cond_3a

    monitor-exit v1

    return-void

    .line 226
    :cond_3a
    if-nez v0, :cond_4a

    .line 227
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2, v0}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_76

    :cond_48
    :goto_48
    monitor-exit v1

    .line 247
    return-void

    .line 233
    :cond_4a
    :try_start_4a
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v3

    .line 236
    const/4 v4, 0x3

    if-eq v3, v4, :cond_58

    const/4 v4, 0x2

    if-ne v3, v4, :cond_79

    .line 239
    :cond_58
    :goto_58
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3, v2}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    .line 242
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0, v2}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_76

    goto :goto_48

    .line 217
    :catchall_76
    move-exception v0

    monitor-exit v1

    throw v0

    .line 238
    :cond_79
    :try_start_79
    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_76

    move-result v3

    .line 235
    if-eqz v3, :cond_48

    goto :goto_58
.end method
