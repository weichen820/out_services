.class Lcom/android/server/DeviceIdleController$Shell;
.super Landroid/os/ShellCommand;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 3

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Shell;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2620
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 2619
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Shell;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/DeviceIdleController;->onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 2

    .prologue
    .line 2629
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2630
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2631
    return-void
.end method
