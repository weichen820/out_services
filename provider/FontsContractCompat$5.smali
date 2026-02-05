.class final Landroid/support/v4/provider/FontsContractCompat$5;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/os/Handler;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 483
    :try_start_2
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$request:Landroid/support/v4/provider/FontRequest;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/support/v4/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_25

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 496
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    .line 517
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$4;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$4;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void

    .line 484
    :catch_25
    move-exception v0

    .line 485
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$1;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$1;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void

    .line 498
    :pswitch_33
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$2;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$2;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void

    .line 507
    :pswitch_40
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$3;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$3;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void

    .line 528
    :cond_4d
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 529
    if-eqz v1, :cond_56

    array-length v2, v1

    if-nez v2, :cond_63

    .line 530
    :cond_56
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$5;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$5;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void

    .line 539
    :cond_63
    array-length v2, v1

    :goto_64
    if-ge v0, v2, :cond_91

    aget-object v3, v1, v0

    .line 540
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_8e

    .line 543
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v0

    .line 544
    if-gez v0, :cond_81

    .line 547
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$6;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$6;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :goto_80
    return-void

    .line 555
    :cond_81
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$5$7;

    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v2, p0, v3, v0}, Landroid/support/v4/provider/FontsContractCompat$5$7;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_80

    .line 539
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 566
    :cond_91
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Landroid/support/v4/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 568
    if-nez v0, :cond_a6

    .line 571
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$5$8;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/provider/FontsContractCompat$5$8;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void

    .line 581
    :cond_a6
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$5$9;

    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v2, p0, v3, v0}, Landroid/support/v4/provider/FontsContractCompat$5$9;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    return-void

    .line 496
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_33
        :pswitch_40
    .end packed-switch
.end method
