.class final Lcom/android/server/LocationManagerService$Identity;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Identity"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field final mUid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput p1, p0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 798
    iput p2, p0, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    .line 799
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 800
    return-void
.end method
