.class Lcom/android/server/InputMethodManagerService$2;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1302
    return-void
.end method
