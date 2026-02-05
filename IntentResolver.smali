.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$1;,
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final localVerificationLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 801
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 818
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 825
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 834
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 839
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 850
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 46
    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 545
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 546
    if-nez v0, :cond_14

    .line 547
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v0

    .line 548
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    aput-object p3, v0, v4

    .line 565
    :goto_13
    return-void

    .line 551
    :cond_14
    array-length v2, v0

    move v1, v2

    .line 553
    :goto_16
    if-lez v1, :cond_21

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    if-nez v3, :cond_21

    .line 554
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 556
    :cond_21
    if-ge v1, v2, :cond_26

    .line 557
    aput-object p3, v0, v1

    goto :goto_13

    .line 559
    :cond_26
    mul-int/lit8 v1, v2, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 560
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    aput-object p3, v1, v2

    .line 562
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v14

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v15

    .line 707
    if-eqz p3, :cond_6b

    .line 708
    new-instance v4, Landroid/util/LogPrinter;

    const-string/jumbo v2, "IntentResolver"

    const/4 v5, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v2, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 709
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v12, v2

    move-object v13, v4

    .line 715
    :goto_23
    if-eqz p7, :cond_70

    move-object/from16 v0, p7

    array-length v2, v0

    move v9, v2

    .line 716
    :goto_29
    const/4 v10, 0x0

    .line 719
    const/4 v2, 0x0

    move v11, v2

    :goto_2c
    if-ge v11, v9, :cond_1bd

    aget-object v2, p7, v11

    if-eqz v2, :cond_1bd

    .line 721
    if-eqz p3, :cond_4e

    const-string/jumbo v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Matching against filter "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_4e
    if-eqz v15, :cond_73

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 724
    if-eqz p3, :cond_65

    .line 725
    const-string/jumbo v2, "IntentResolver"

    const-string/jumbo v4, "  Filter\'s target is stopped; skipping"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    move v2, v10

    .line 719
    :goto_66
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v10, v2

    goto :goto_2c

    .line 711
    :cond_6b
    const/4 v4, 0x0

    .line 712
    const/4 v2, 0x0

    move-object v12, v2

    move-object v13, v4

    goto :goto_23

    .line 715
    :cond_70
    const/4 v2, 0x0

    move v9, v2

    goto :goto_29

    .line 731
    :cond_73
    if-eqz v14, :cond_a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a4

    .line 732
    if-eqz p3, :cond_a2

    .line 733
    const-string/jumbo v2, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Filter is not from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    move v2, v10

    .line 735
    goto :goto_66

    .line 739
    :cond_a4
    invoke-virtual {v2}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 740
    if-eqz p3, :cond_fc

    .line 741
    const-string/jumbo v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Filter verified: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v5

    .line 743
    const/4 v4, 0x0

    :goto_d1
    if-ge v4, v5, :cond_fc

    .line 744
    const-string/jumbo v7, "IntentResolver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "   "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    .line 750
    :cond_fc
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 751
    if-eqz p3, :cond_111

    .line 752
    const-string/jumbo v2, "IntentResolver"

    const-string/jumbo v4, "  Filter\'s target already added"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    move v2, v10

    .line 754
    goto/16 :goto_66

    .line 757
    :cond_114
    const-string/jumbo v8, "IntentResolver"

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 758
    if-ltz v4, :cond_188

    .line 759
    if-eqz p3, :cond_155

    const-string/jumbo v5, "IntentResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter matched!  match=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 760
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 759
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 760
    const-string/jumbo v8, " hasDefault="

    .line 759
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 761
    const-string/jumbo v8, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    .line 759
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_155
    if-eqz p4, :cond_160

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_185

    .line 763
    :cond_160
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v4

    .line 764
    if-eqz v4, :cond_1e2

    .line 765
    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    if-eqz p3, :cond_1e2

    .line 767
    const-string/jumbo v4, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v2}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 768
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 769
    const-string/jumbo v4, "    "

    invoke-virtual {v2, v13, v4}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move v2, v10

    goto/16 :goto_66

    .line 773
    :cond_185
    const/4 v2, 0x1

    goto/16 :goto_66

    .line 776
    :cond_188
    if-eqz p3, :cond_1e2

    .line 778
    packed-switch v4, :pswitch_data_1e6

    .line 783
    const-string/jumbo v2, "unknown reason"

    .line 785
    :goto_190
    const-string/jumbo v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Filter did not match: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v10

    goto/16 :goto_66

    .line 779
    :pswitch_1ad
    const-string/jumbo v2, "action"

    goto :goto_190

    .line 780
    :pswitch_1b1
    const-string/jumbo v2, "category"

    goto :goto_190

    .line 781
    :pswitch_1b5
    const-string/jumbo v2, "data"

    goto :goto_190

    .line 782
    :pswitch_1b9
    const-string/jumbo v2, "type"

    goto :goto_190

    .line 790
    :cond_1bd
    if-eqz p3, :cond_1d0

    if-eqz v10, :cond_1d0

    .line 791
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1d1

    .line 792
    const-string/jumbo v2, "IntentResolver"

    const-string/jumbo v3, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_1d0
    :goto_1d0
    return-void

    .line 793
    :cond_1d1
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d0

    .line 794
    const-string/jumbo v2, "IntentResolver"

    const-string/jumbo v3, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d0

    :cond_1e2
    move v2, v10

    goto/16 :goto_66

    .line 778
    nop

    :pswitch_data_1e6
    .packed-switch -0x4
        :pswitch_1b1
        :pswitch_1ad
        :pswitch_1b5
        :pswitch_1b9
    .end packed-switch
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    if-eqz p1, :cond_b

    .line 150
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_b

    .line 151
    aget-object v2, p1, v0

    .line 152
    if-nez v2, :cond_c

    .line 163
    :cond_b
    return-object v1

    .line 155
    :cond_c
    invoke-direct {p0, v2, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 156
    if-nez v1, :cond_19

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :cond_19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    .line 75
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 76
    if-eq v2, v0, :cond_c

    .line 77
    return v1

    :cond_c
    move v0, v1

    .line 79
    :goto_d
    if-ge v0, v2, :cond_1d

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 81
    return v1

    .line 79
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 84
    :cond_1d
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 85
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 86
    if-eq v2, v0, :cond_28

    .line 87
    return v1

    :cond_28
    move v0, v1

    .line 89
    :goto_29
    if-ge v0, v2, :cond_39

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 91
    return v1

    .line 89
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 94
    :cond_39
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    .line 95
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 96
    if-eq v2, v0, :cond_44

    .line 97
    return v1

    :cond_44
    move v0, v1

    .line 99
    :goto_45
    if-ge v0, v2, :cond_55

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 101
    return v1

    .line 99
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 104
    :cond_55
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    .line 105
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 106
    if-eq v2, v0, :cond_60

    .line 107
    return v1

    :cond_60
    move v0, v1

    .line 109
    :goto_61
    if-ge v0, v2, :cond_71

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 111
    return v1

    .line 109
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 114
    :cond_71
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    .line 115
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 116
    if-eq v2, v0, :cond_7c

    .line 117
    return v1

    :cond_7c
    move v0, v1

    .line 119
    :goto_7d
    if-ge v0, v2, :cond_8d

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 121
    return v1

    .line 119
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 124
    :cond_8d
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    .line 125
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 126
    if-eq v2, v0, :cond_98

    .line 127
    return v1

    :cond_98
    move v0, v1

    .line 129
    :goto_99
    if-ge v0, v2, :cond_a9

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 131
    return v1

    .line 129
    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 134
    :cond_a9
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    .line 135
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 136
    if-eq v2, v0, :cond_b4

    .line 137
    return v1

    :cond_b4
    move v0, v1

    .line 139
    :goto_b5
    if-ge v0, v2, :cond_c5

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 141
    return v1

    .line 139
    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 144
    :cond_c5
    const/4 v0, 0x1

    return v0
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 690
    if-nez v0, :cond_8

    .line 691
    return-object v1

    .line 693
    :cond_8
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 630
    if-nez p2, :cond_4

    .line 631
    return v0

    :cond_4
    move v1, v0

    .line 635
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 636
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    add-int/lit8 v1, v1, 0x1

    .line 639
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_5

    .line 641
    :cond_17
    return v1
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 569
    if-nez v4, :cond_8

    .line 570
    return v2

    :cond_8
    move v1, v2

    .line 574
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 575
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    add-int/lit8 v1, v1, 0x1

    .line 579
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 580
    if-lez v5, :cond_37

    .line 581
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 586
    :goto_2a
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 588
    if-lez v5, :cond_4c

    .line 589
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_9

    .line 583
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    .line 591
    :cond_4c
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_9

    .line 595
    :cond_52
    return v1
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 662
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 663
    if-eqz v0, :cond_32

    .line 664
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 665
    :goto_d
    if-ltz v1, :cond_16

    aget-object v2, v0, v1

    if-nez v2, :cond_16

    .line 666
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_16
    move v2, v1

    .line 668
    :goto_17
    if-ltz v2, :cond_2d

    .line 669
    aget-object v3, v0, v2

    if-ne v3, p3, :cond_2a

    .line 670
    sub-int v3, v1, v2

    .line 671
    if-lez v3, :cond_26

    .line 672
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    :cond_26
    aput-object v6, v0, v1

    .line 675
    add-int/lit8 v1, v1, -0x1

    .line 668
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 678
    :cond_2d
    if-gez v1, :cond_33

    .line 679
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_32
    :goto_32
    return-void

    .line 680
    :cond_33
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_32

    .line 681
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v2

    .line 682
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 646
    if-nez p2, :cond_4

    .line 647
    return v0

    :cond_4
    move v1, v0

    .line 651
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 652
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    add-int/lit8 v1, v1, 0x1

    .line 655
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 657
    :cond_17
    return v1
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 599
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 600
    if-nez v4, :cond_8

    .line 601
    return v2

    :cond_8
    move v1, v2

    .line 605
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 606
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    add-int/lit8 v1, v1, 0x1

    .line 610
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 611
    if-lez v5, :cond_37

    .line 612
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 617
    :goto_2a
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    if-lez v5, :cond_4c

    .line 620
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 614
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    .line 622
    :cond_4c
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 625
    :cond_52
    return v1
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v2, "      Scheme: "

    .line 60
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 62
    const-string/jumbo v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 63
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    .line 64
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v3, "      Action: "

    .line 64
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 67
    :cond_29
    if-eqz v1, :cond_37

    .line 68
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v2, "      TypedAction: "

    .line 68
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 71
    :cond_37
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 17

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    const-string/jumbo v3, "Full MIME Types:"

    .line 288
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 287
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_52

    move-object v2, v9

    .line 291
    :cond_52
    const-string/jumbo v3, "Base MIME Types:"

    .line 292
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 291
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_64

    move-object v2, v9

    .line 295
    :cond_64
    const-string/jumbo v3, "Wild MIME Types:"

    .line 296
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 295
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_76

    move-object v2, v9

    .line 299
    :cond_76
    const-string/jumbo v3, "Schemes:"

    .line 300
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 299
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_88

    move-object v2, v9

    .line 303
    :cond_88
    const-string/jumbo v3, "Non-Data Actions:"

    .line 304
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 303
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v2, v9

    .line 307
    :cond_9a
    const-string/jumbo v3, "MIME Typed Actions:"

    .line 308
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 307
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_ac

    move-object v2, v9

    .line 311
    :cond_ac
    if-ne v2, v9, :cond_b0

    const/4 v0, 0x1

    :goto_af
    return v0

    :cond_b0
    const/4 v0, 0x0

    goto :goto_af
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6

    .prologue
    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 542
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 222
    const/4 v4, 0x0

    .line 223
    const/4 v3, 0x0

    .line 224
    const/4 v2, 0x0

    move-object v5, v3

    move v6, v4

    move v4, v2

    :goto_37
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v4, v2, :cond_155

    .line 225
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 226
    array-length v12, v2

    .line 227
    const/4 v7, 0x0

    .line 229
    if-eqz p8, :cond_db

    xor-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_db

    .line 230
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 231
    const/4 v3, 0x0

    move v8, v3

    :goto_52
    if-ge v8, v12, :cond_8d

    aget-object v3, v2, v8

    if-eqz v3, :cond_8d

    .line 232
    if-eqz p6, :cond_6a

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_6a

    .line 231
    :goto_66
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_52

    .line 235
    :cond_6a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v3

    .line 236
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v13

    .line 237
    if-gez v13, :cond_80

    .line 238
    new-instance v13, Landroid/util/MutableInt;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v11, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 240
    :cond_80
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MutableInt;

    iget v13, v3, Landroid/util/MutableInt;->value:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v3, Landroid/util/MutableInt;->value:I

    goto :goto_66

    .line 243
    :cond_8d
    const/4 v2, 0x0

    move v3, v2

    move v2, v7

    :goto_90
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_159

    .line 244
    if-eqz p3, :cond_a4

    .line 245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const/16 p3, 0x0

    .line 248
    :cond_a4
    if-nez v2, :cond_156

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const/4 v6, 0x1

    .line 252
    :goto_c1
    const/4 v7, 0x1

    .line 253
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v8, v2}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 243
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v6

    move v6, v7

    goto :goto_90

    .line 256
    :cond_db
    const/4 v3, 0x0

    move v8, v3

    move v3, v7

    move-object/from16 v7, p3

    :goto_e0
    if-ge v8, v12, :cond_f7

    aget-object v13, v2, v8

    if-eqz v13, :cond_f7

    .line 257
    if-eqz p6, :cond_102

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v13}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_102

    .line 256
    :cond_f4
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    goto :goto_e0

    :cond_f7
    move-object v3, v5

    move-object/from16 p3, v7

    move v5, v6

    .line 224
    :goto_fb
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v6, v5

    move-object v5, v3

    goto/16 :goto_37

    .line 260
    :cond_102
    if-eqz v7, :cond_10d

    .line 261
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const/4 v7, 0x0

    .line 264
    :cond_10d
    if-nez v3, :cond_12a

    .line 265
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const/4 v3, 0x1

    .line 268
    :cond_12a
    const/4 v6, 0x1

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v13}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 270
    if-eqz p7, :cond_f4

    .line 271
    if-nez v5, :cond_13d

    .line 272
    new-instance v5, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 274
    :cond_13d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v5, v14}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_f4

    .line 279
    :cond_155
    return v6

    :cond_156
    move v6, v2

    goto/16 :goto_c1

    :cond_159
    move-object v3, v5

    move v5, v6

    goto :goto_fb
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 530
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 537
    const-string/jumbo v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-ne v1, v3, :cond_1a

    .line 169
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 170
    :cond_1a
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 172
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 173
    :cond_37
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-nez v1, :cond_5a

    .line 174
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-ne v1, v3, :cond_5a

    .line 176
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 179
    :cond_5a
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 181
    if-nez v1, :cond_7a

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :cond_7a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_7e
    move-object v1, v0

    goto :goto_61

    .line 187
    :cond_80
    return-object v1

    :cond_81
    move-object v0, v1

    goto :goto_7e
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .prologue
    .line 518
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 376
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1eb

    const/4 v4, 0x1

    .line 381
    :goto_12
    if-eqz v4, :cond_60

    .line 382
    const-string/jumbo v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolving type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " scheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    const-string/jumbo v3, " defaultOnly="

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    const-string/jumbo v3, " userId="

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    const-string/jumbo v3, " of "

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_60
    const/4 v1, 0x0

    .line 386
    const/4 v3, 0x0

    .line 387
    const/4 v2, 0x0

    .line 388
    const/4 v5, 0x0

    .line 392
    if-eqz p2, :cond_287

    .line 393
    const/16 v6, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 394
    if-lez v6, :cond_287

    .line 395
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 396
    const-string/jumbo v10, "*"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_241

    .line 397
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v6, 0x2

    if-ne v1, v2, :cond_94

    .line 398
    add-int/lit8 v1, v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1ee

    .line 401
    :cond_94
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 402
    if-eqz v4, :cond_be

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_be
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 404
    if-eqz v4, :cond_e6

    const-string/jumbo v3, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Second type cut: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 405
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    move-object v3, v1

    .line 416
    :goto_e7
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v6, "*"

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 417
    if-eqz v4, :cond_28c

    const-string/jumbo v6, "IntentResolver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Third type cut: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v1

    move-object v13, v2

    move-object v8, v3

    .line 431
    :goto_115
    if-eqz v7, :cond_27f

    .line 432
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 433
    if-eqz v4, :cond_27c

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheme list: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v1

    .line 439
    :goto_140
    if-nez p2, :cond_177

    if-nez v7, :cond_177

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_177

    .line 440
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 441
    if-eqz v4, :cond_279

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Action list: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v1

    .line 444
    :cond_177
    :goto_177
    invoke-static {p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 445
    if-eqz v8, :cond_188

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v10, p4

    .line 446
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 449
    :cond_188
    if-eqz v13, :cond_196

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    move-object v8, v13

    move/from16 v10, p4

    .line 450
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 453
    :cond_196
    if-eqz v12, :cond_1a4

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    move-object v8, v12

    move/from16 v10, p4

    .line 454
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 457
    :cond_1a4
    if-eqz v11, :cond_1b2

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    move-object v8, v11

    move/from16 v10, p4

    .line 458
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 461
    :cond_1b2
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 462
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 464
    if-eqz v4, :cond_278

    .line 465
    const-string/jumbo v1, "IntentResolver"

    const-string/jumbo v2, "Final result list:"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v1, 0x0

    :goto_1c4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_278

    .line 467
    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c4

    .line 379
    :cond_1eb
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 408
    :cond_1ee
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 409
    if-eqz v4, :cond_216

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_216
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 411
    if-eqz v4, :cond_291

    const-string/jumbo v3, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Second type cut: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 412
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 411
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto/16 :goto_e7

    .line 418
    :cond_241
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_287

    .line 422
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 423
    if-eqz v4, :cond_282

    const-string/jumbo v6, "IntentResolver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Typed Action list: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v2

    move-object v13, v3

    move-object v8, v1

    goto/16 :goto_115

    .line 470
    :cond_278
    return-object v9

    :cond_279
    move-object v8, v1

    goto/16 :goto_177

    :cond_27c
    move-object v11, v1

    goto/16 :goto_140

    :cond_27f
    move-object v11, v5

    goto/16 :goto_140

    :cond_282
    move-object v12, v2

    move-object v13, v3

    move-object v8, v1

    goto/16 :goto_115

    :cond_287
    move-object v12, v2

    move-object v13, v3

    move-object v8, v1

    goto/16 :goto_115

    :cond_28c
    move-object v12, v1

    move-object v13, v2

    move-object v8, v3

    goto/16 :goto_115

    :cond_291
    move-object v3, v1

    goto/16 :goto_e7
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_34

    const/4 v4, 0x1

    .line 360
    :goto_e
    invoke-static {p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 361
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 363
    const/4 v1, 0x0

    move v11, v1

    :goto_1c
    if-ge v11, v12, :cond_36

    .line 365
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/IntentFilter;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object v6, p2

    move/from16 v10, p5

    .line 364
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 363
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1c

    .line 358
    :cond_34
    const/4 v4, 0x0

    goto :goto_e

    .line 367
    :cond_36
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 368
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 369
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v2, "      Scheme: "

    .line 203
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 205
    const-string/jumbo v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 206
    if-nez v0, :cond_24

    if-nez v1, :cond_24

    .line 207
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v3, "      Action: "

    .line 207
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 210
    :cond_24
    if-eqz v1, :cond_32

    .line 211
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v2, "      TypedAction: "

    .line 211
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 214
    :cond_32
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 523
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 524
    return-void
.end method
