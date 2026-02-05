.class Lcom/android/server/BluetoothManagerService$2;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    new-array v0, v3, [Ljava/lang/String;

    .line 250
    const-string/jumbo v1, "no_bluetooth_sharing"

    aput-object v1, v0, v2

    .line 249
    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 251
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 252
    const-string/jumbo v1, "no_bluetooth_sharing"

    .line 251
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/BluetoothManagerService;->-wrap23(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 256
    :cond_1b
    if-nez p1, :cond_42

    .line 257
    new-array v0, v3, [Ljava/lang/String;

    .line 258
    const-string/jumbo v1, "no_bluetooth"

    aput-object v1, v0, v2

    .line 257
    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    .line 256
    if-eqz v0, :cond_42

    .line 259
    if-nez p1, :cond_43

    .line 260
    const-string/jumbo v0, "no_bluetooth"

    .line 259
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 261
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, p1, v3}, Lcom/android/server/BluetoothManagerService;->-wrap23(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 262
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string/jumbo v1, "disallowed by system"

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-wrap19(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 268
    :cond_42
    :goto_42
    return-void

    .line 264
    :cond_43
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 265
    const-string/jumbo v1, "no_bluetooth_sharing"

    .line 264
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/BluetoothManagerService;->-wrap23(Lcom/android/server/BluetoothManagerService;IZ)V

    goto :goto_42
.end method
