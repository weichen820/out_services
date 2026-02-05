.class Lcom/android/server/EntropyMixer$2;
.super Landroid/content/BroadcastReceiver;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyMixer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/EntropyMixer$2;->this$0:Lcom/android/server/EntropyMixer;

    .line 86
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/EntropyMixer$2;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {v0}, Lcom/android/server/EntropyMixer;->-wrap2(Lcom/android/server/EntropyMixer;)V

    .line 90
    return-void
.end method
