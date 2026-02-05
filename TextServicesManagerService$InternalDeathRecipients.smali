.class final Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalDeathRecipients"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/android/internal/textservice/ISpellCheckerSessionListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)V
    .registers 2

    .prologue
    .line 982
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 983
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 984
    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .prologue
    .line 986
    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p0, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 989
    return-void
.end method
