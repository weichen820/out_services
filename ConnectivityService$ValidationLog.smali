.class Lcom/android/server/ConnectivityService$ValidationLog;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationLog"
.end annotation


# instance fields
.field final mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

.field final mNetwork:Landroid/net/Network;

.field final mNetworkExtraInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/util/LocalLog$ReadOnlyLocalLog;)V
    .registers 4

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    .line 478
    iput-object p2, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetworkExtraInfo:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    .line 480
    return-void
.end method
