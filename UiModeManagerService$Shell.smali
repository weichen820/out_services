.class Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method constructor <init>(Landroid/app/IUiModeManager;)V
    .registers 2

    .prologue
    .line 746
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 747
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 748
    return-void
.end method

.method private handleNightMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 781
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 783
    if-nez v1, :cond_f

    .line 784
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 785
    return v2

    .line 788
    :cond_f
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v1

    .line 789
    if-ltz v1, :cond_1e

    .line 790
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->setNightMode(I)V

    .line 791
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 792
    return v2

    .line 794
    :cond_1e
    const-string/jumbo v1, "Error: mode must be \'yes\', \'no\', or \'auto\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    const/4 v0, -0x1

    return v0
.end method

.method private static nightModeToStr(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 808
    packed-switch p0, :pswitch_data_14

    .line 816
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 810
    :pswitch_7
    const-string/jumbo v0, "yes"

    return-object v0

    .line 812
    :pswitch_b
    const-string/jumbo v0, "no"

    return-object v0

    .line 814
    :pswitch_f
    const-string/jumbo v0, "auto"

    return-object v0

    .line 808
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private printCurrentNightMode()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    .line 803
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Night mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method private static strToNightMode(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 821
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 823
    const/4 v0, 0x2

    return v0

    .line 821
    :cond_b
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 825
    const/4 v0, 0x1

    return v0

    .line 821
    :cond_16
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 827
    const/4 v0, 0x0

    return v0

    .line 829
    :cond_21
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 762
    if-nez p1, :cond_7

    .line 763
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 767
    :cond_7
    :try_start_7
    const-string/jumbo v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 769
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result v0

    return v0

    .line 771
    :cond_15
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1a

    move-result v0

    return v0

    .line 773
    :catch_1a
    move-exception v0

    .line 774
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    const/4 v0, -0x1

    return v0
.end method

.method public onHelp()V
    .registers 3

    .prologue
    .line 752
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 753
    const-string/jumbo v1, "UiModeManager service (uimode) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    const-string/jumbo v1, "  night [yes|no|auto]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    const-string/jumbo v1, "    Set or read night mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    return-void
.end method
