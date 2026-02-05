.class public Lcom/android/server/BasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "BasePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BasePermissionDialog$1;
    }
.end annotation


# instance fields
.field private final mInfoHandler:Landroid/os/Handler;

.field private mState:Z


# direct methods
.method static synthetic -set0(Lcom/android/server/BasePermissionDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BasePermissionDialog;->mState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BasePermissionDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/high16 v1, 0x20000

    .line 65
    const v0, 0x10303b2

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v0, Lcom/android/server/BasePermissionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/BasePermissionDialog$1;-><init>(Lcom/android/server/BasePermissionDialog;)V

    iput-object v0, p0, Lcom/android/server/BasePermissionDialog;->mInfoHandler:Landroid/os/Handler;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BasePermissionDialog;->mState:Z

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 70
    const-string/jumbo v1, "Permission"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const v1, 0x1010355

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    return-void
.end method

.method private setEnabled(Z)V
    .registers 3

    .prologue
    .line 76
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    if-eqz v0, :cond_e

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 80
    :cond_e
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    if-eqz v0, :cond_1c

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 84
    :cond_1c
    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    if-eqz v0, :cond_2a

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    :cond_2a
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/BasePermissionDialog;->mState:Z

    if-eqz v0, :cond_6

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_6
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 60
    invoke-direct {p0, v2}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/server/BasePermissionDialog;->mInfoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BasePermissionDialog;->mInfoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    return-void
.end method
