.class Lcom/android/server/GraphicsStatsService$1;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 121
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 115
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-static {v1, v0}, Lcom/android/server/GraphicsStatsService;->-wrap2(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    goto :goto_5

    .line 118
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->-wrap0(Lcom/android/server/GraphicsStatsService;)V

    goto :goto_5

    .line 113
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method
