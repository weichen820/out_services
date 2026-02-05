.class public abstract Landroid/arch/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/Lifecycle$Event;,
        Landroid/arch/lifecycle/Lifecycle$State;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method public abstract addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
