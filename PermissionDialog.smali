.class public Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialog$1;
    }
.end annotation


# static fields
.field private static final ALLOWED_REQ:I = 0x2

.field private static final IGNORED_REQ:I = 0x4

.field private static final IGNORED_REQ_TIMEOUT:I = 0x8

.field private static final TIMEOUT_WAIT:J = 0x3a98L


# instance fields
.field private final contId:Landroid/content/Context;

.field private final inputId:I

.field private final inputPackage:Ljava/lang/String;

.field private final mDef:I

.field private final mOpLabels:[Ljava/lang/CharSequence;

.field private final myHandle:Landroid/os/Handler;

.field private final opsServ:Lcom/android/server/AppOpsService;

.field private final viewId:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/server/PermissionDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/PermissionDialog;->inputId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PermissionDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/PermissionDialog;->mDef:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/android/server/PermissionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;)V

    iput-object v0, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    .line 60
    iput-object p2, p0, Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;

    .line 61
    iput-object p5, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/server/PermissionDialog;->contId:Landroid/content/Context;

    .line 63
    iput p3, p0, Lcom/android/server/PermissionDialog;->mDef:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    iput p4, p0, Lcom/android/server/PermissionDialog;->inputId:I

    .line 67
    const v1, 0x1070006

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 70
    const v1, 0x1040069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 69
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 73
    const v1, 0x104019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 72
    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 75
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PermissionXXX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    const v1, 0x10900ad

    .line 81
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 84
    const v1, 0x1020375

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    if-nez v1, :cond_a4

    .line 87
    iget-object v1, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    .line 89
    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/server/PermissionDialog;->mDef:I

    add-int/lit8 v3, v3, -0x46

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 92
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->contId:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 116
    const/16 v1, 0x2200

    :try_start_9
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_16

    move-result-object v1

    .line 121
    if-eqz v1, :cond_18

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 118
    :catch_16
    move-exception v0

    .line 119
    return-object v2

    .line 124
    :cond_18
    return-object v2
.end method
