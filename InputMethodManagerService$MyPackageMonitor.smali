.class final Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImePackageAppeared:Z

.field private final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 942
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 932
    return-void
.end method

.method private clearPackageChangeState()V
    .registers 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1074
    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    .line 983
    :goto_f
    return v0

    .line 977
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private onFinishPackageChangesInternal()V
    .registers 16

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1099
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1100
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_128

    move-result v0

    if-nez v0, :cond_12

    monitor-exit v6

    .line 1101
    return-void

    .line 1103
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_128

    move-result v0

    if-nez v0, :cond_1a

    monitor-exit v6

    .line 1104
    return-void

    .line 1108
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 1109
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1110
    if-eqz v7, :cond_12f

    move v5, v2

    move-object v4, v3

    .line 1111
    :goto_2e
    if-ge v5, v8, :cond_90

    .line 1112
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1113
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 1114
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    move-object v4, v0

    .line 1118
    :cond_45
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    .line 1119
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 1120
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->-wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    .line 1122
    :cond_60
    if-eq v10, v12, :cond_64

    .line 1123
    if-ne v10, v13, :cond_8c

    .line 1124
    :cond_64
    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Input method uninstalled, disabling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1125
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 1111
    :cond_8c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2e

    :cond_90
    move-object v0, v4

    .line 1131
    :goto_91
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1135
    if-eqz v0, :cond_12b

    .line 1136
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_1a .. :try_end_a0} :catchall_128

    move-result v4

    .line 1137
    if-eq v4, v12, :cond_a5

    .line 1138
    if-ne v4, v13, :cond_113

    .line 1141
    :cond_a5
    :try_start_a5
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1142
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    const/4 v9, 0x0

    .line 1141
    invoke-interface {v4, v5, v9, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_bb} :catch_117
    .catchall {:try_start_a5 .. :try_end_bb} :catchall_128

    move-result-object v4

    .line 1145
    :goto_bc
    if-nez v4, :cond_12b

    .line 1148
    :try_start_be
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Current input method removed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget v7, v7, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v8, 0x0

    invoke-static {v4, v5, v8, v7}, Lcom/android/server/InputMethodManagerService;->-wrap2(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 1150
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v4

    if-nez v4, :cond_12b

    .line 1153
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "Unsetting current input method"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    move v0, v1

    move-object v2, v3

    .line 1160
    :goto_101
    if-nez v2, :cond_11a

    .line 1163
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    .line 1170
    :cond_109
    :goto_109
    if-eqz v0, :cond_111

    .line 1171
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_111
    .catchall {:try_start_be .. :try_end_111} :catchall_128

    :cond_111
    monitor-exit v6

    .line 1174
    return-void

    :cond_113
    move v14, v2

    move-object v2, v0

    move v0, v14

    .line 1138
    goto :goto_101

    .line 1143
    :catch_117
    move-exception v4

    move-object v4, v3

    goto :goto_bc

    .line 1164
    :cond_11a
    if-nez v0, :cond_109

    :try_start_11c
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_128

    move-result v2

    if-eqz v2, :cond_109

    move v0, v1

    .line 1167
    goto :goto_109

    .line 1099
    :catchall_128
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_12b
    move v14, v2

    move-object v2, v0

    move v0, v14

    goto :goto_101

    :cond_12f
    move-object v0, v3

    goto/16 :goto_91
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1081
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-eqz v0, :cond_7

    .line 1082
    return v5

    .line 1088
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1089
    :goto_e
    if-ge v1, v3, :cond_25

    .line 1090
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1091
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1092
    return v5

    .line 1089
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1095
    :cond_25
    return v2
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 972
    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 967
    return-void
.end method

.method public onBeginPackageChanges()V
    .registers 1

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1018
    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 1067
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1068
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 988
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 989
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_64

    move-result v0

    if-nez v0, :cond_f

    monitor-exit v4

    .line 990
    return v2

    .line 992
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 993
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 994
    if-eqz v5, :cond_62

    move v3, v2

    .line 995
    :goto_22
    if-ge v3, v6, :cond_62

    .line 996
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 997
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 998
    array-length v7, p2

    move v1, v2

    :goto_3a
    if-ge v1, v7, :cond_5e

    aget-object v8, p2, v1

    .line 999
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_64

    move-result v8

    if-eqz v8, :cond_5b

    .line 1000
    if-nez p4, :cond_4c

    monitor-exit v4

    .line 1001
    return v10

    .line 1003
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_64

    monitor-exit v4

    .line 1005
    return v10

    .line 998
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 995
    :cond_5e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    :cond_62
    monitor-exit v4

    .line 1012
    return v2

    .line 988
    :catchall_64
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez v0, :cond_2b

    .line 1023
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1025
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    const/16 v3, 0x200

    .line 1024
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1028
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1033
    :cond_2b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1051
    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_e

    aget-object v2, p1, v0

    .line 1052
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1054
    :cond_e
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1059
    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_e

    aget-object v2, p1, v0

    .line 1060
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1062
    :cond_e
    return-void
.end method
