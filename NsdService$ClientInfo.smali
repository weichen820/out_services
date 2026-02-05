.class Lcom/android/server/NsdService$ClientInfo;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0xa


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mClientIds:Landroid/util/SparseIntArray;

.field private final mClientRequests:Landroid/util/SparseIntArray;

.field private final mMessenger:Landroid/os/Messenger;

.field private mResolvedService:Landroid/net/nsd/NsdServiceInfo;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method static synthetic -get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NsdService$ClientInfo;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NsdService$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NsdService$ClientInfo;->expungeAllRequests()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .registers 7

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    .line 820
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    .line 823
    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 824
    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 825
    const-string/jumbo v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New client, channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " messenger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$ClientInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    return-void
.end method

.method private expungeAllRequests()V
    .registers 7

    .prologue
    .line 848
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 849
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 850
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 851
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3}, Lcom/android/server/NsdService;->-get3(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 852
    const-string/jumbo v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Terminating client-ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 853
    const-string/jumbo v5, " global-ID "

    .line 852
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 853
    const-string/jumbo v5, " type "

    .line 852
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 853
    iget-object v5, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 852
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_7e

    .line 848
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 856
    :sswitch_60
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;I)Z

    goto :goto_5d

    .line 859
    :sswitch_66
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    goto :goto_5d

    .line 862
    :sswitch_6c
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    goto :goto_5d

    .line 868
    :cond_72
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 869
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 870
    return-void

    .line 854
    nop

    :sswitch_data_7e
    .sparse-switch
        0x60001 -> :sswitch_60
        0x60009 -> :sswitch_6c
        0x60012 -> :sswitch_66
    .end sparse-switch
.end method

.method private getClientId(I)I
    .registers 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 876
    if-gez v0, :cond_9

    .line 877
    return v0

    .line 879
    :cond_9
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 830
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 831
    const-string/jumbo v0, "mChannel "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    const-string/jumbo v0, "mMessenger "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 833
    const-string/jumbo v0, "mResolvedService "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    const/4 v0, 0x0

    :goto_3f
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_83

    .line 835
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 836
    const-string/jumbo v3, "clientId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 837
    const-string/jumbo v4, " mDnsId "

    .line 836
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 837
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 836
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 838
    const-string/jumbo v4, " type "

    .line 836
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 838
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 836
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 838
    const-string/jumbo v3, "\n"

    .line 836
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 840
    :cond_83
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
