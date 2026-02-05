.class final Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextServicesSettings"
.end annotation


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;IZ)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 1017
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    .line 1022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    .line 1023
    iput-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    .line 1027
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1028
    invoke-virtual {p0, p2, p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    .line 1029
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1090
    if-eqz p2, :cond_c

    move v0, v1

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e

    :goto_b
    return v1

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_e
    move v1, v2

    goto :goto_b
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1083
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1084
    if-eqz v0, :cond_1b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 1086
    :cond_1d
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1066
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1070
    :goto_14
    if-eqz v0, :cond_17

    move-object p2, v0

    :cond_17
    return-object p2

    .line 1068
    :cond_18
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private putInt(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_e

    .line 1075
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :goto_d
    return-void

    .line 1077
    :cond_e
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_d
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_a

    .line 1056
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :goto_9
    return-void

    .line 1058
    :cond_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_9
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method public getCurrentUserId()I
    .registers 2

    .prologue
    .line 1111
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1124
    const-string/jumbo v0, "selected_spell_checker"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .registers 3

    .prologue
    .line 1128
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isCurrentProfile(I)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1100
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1101
    :try_start_5
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1e

    if-ne p1, v0, :cond_b

    monitor-exit v2

    return v4

    :cond_b
    move v0, v1

    .line 1102
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1c

    .line 1103
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    aget v3, v3, v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1e

    if-ne p1, v3, :cond_19

    monitor-exit v2

    return v4

    .line 1102
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    monitor-exit v2

    .line 1105
    return v1

    .line 1100
    :catchall_1e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .prologue
    .line 1132
    const-string/jumbo v0, "spell_checker_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1115
    const-string/jumbo v0, "selected_spell_checker"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .registers 3

    .prologue
    .line 1119
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    .line 1120
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .registers 4

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 1097
    return-void

    .line 1094
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public switchCurrentUser(IZ)V
    .registers 4

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_d

    .line 1045
    :cond_8
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1049
    :cond_d
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 1050
    iput-boolean p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    .line 1052
    return-void
.end method
