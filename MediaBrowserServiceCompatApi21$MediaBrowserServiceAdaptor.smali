.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;
.super Landroid/service/media/MediaBrowserService;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# instance fields
.field final mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 113
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 114
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    .line 115
    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    .line 121
    if-nez p3, :cond_d

    move-object v0, v1

    .line 120
    :goto_6
    invoke-interface {v2, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;

    move-result-object v0

    .line 122
    if-nez v0, :cond_13

    :goto_c
    return-object v1

    .line 121
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_6

    .line 122
    :cond_13
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 123
    iget-object v2, v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mRootId:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mExtras:Landroid/os/Bundle;

    .line 122
    invoke-direct {v1, v2, v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_c
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 129
    return-void
.end method
