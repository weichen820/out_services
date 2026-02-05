.class public Landroid/support/v4/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mType:C
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-char p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 321
    iput-object p2, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    .line 322
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 5

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iget-char v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 326
    iget-object v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    .line 327
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 24

    .prologue
    .line 364
    const/4 v9, 0x2

    .line 365
    const/4 v3, 0x0

    aget v8, p1, v3

    .line 366
    const/4 v3, 0x1

    aget v7, p1, v3

    .line 367
    const/4 v3, 0x2

    aget v5, p1, v3

    .line 368
    const/4 v3, 0x3

    aget v3, p1, v3

    .line 369
    const/4 v4, 0x4

    aget v6, p1, v4

    .line 370
    const/4 v4, 0x5

    aget v4, p1, v4

    .line 374
    sparse-switch p3, :sswitch_data_438

    move v13, v9

    .line 417
    :goto_17
    const/4 v9, 0x0

    move v14, v9

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    :goto_20
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v14, v4, :cond_425

    .line 418
    sparse-switch p3, :sswitch_data_48a

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 417
    :goto_31
    add-int v3, v14, v13

    move v14, v3

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 p2, p3

    move v3, v5

    move v5, v7

    goto :goto_20

    .line 377
    :sswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 385
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v4

    move v5, v6

    move v7, v4

    move v8, v6

    move v13, v9

    .line 386
    goto :goto_17

    .line 393
    :sswitch_4e
    const/4 v9, 0x2

    move v13, v9

    .line 394
    goto :goto_17

    .line 399
    :sswitch_51
    const/4 v9, 0x1

    move v13, v9

    .line 400
    goto :goto_17

    .line 403
    :sswitch_54
    const/4 v9, 0x6

    move v13, v9

    .line 404
    goto :goto_17

    .line 409
    :sswitch_57
    const/4 v9, 0x4

    move v13, v9

    .line 410
    goto :goto_17

    .line 413
    :sswitch_5a
    const/4 v9, 0x7

    move v13, v9

    .line 414
    goto :goto_17

    .line 420
    :sswitch_5d
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 421
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-float v4, v4, v17

    .line 422
    if-lez v14, :cond_80

    .line 426
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_78
    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 432
    goto :goto_31

    .line 428
    :cond_80
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v15, v4

    move/from16 v16, v6

    .line 430
    goto :goto_78

    .line 434
    :sswitch_91
    add-int/lit8 v4, v14, 0x0

    aget v6, p4, v4

    .line 435
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    .line 436
    if-lez v14, :cond_b0

    .line 440
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_a8
    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 446
    goto :goto_31

    .line 442
    :cond_b0
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v15, v4

    move/from16 v16, v6

    .line 444
    goto :goto_a8

    .line 448
    :sswitch_c1
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 449
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v18, v18, v4

    .line 450
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-float v17, v17, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 451
    goto/16 :goto_31

    .line 453
    :sswitch_e5
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    add-int/lit8 v4, v14, 0x0

    aget v18, p4, v4

    .line 455
    add-int/lit8 v4, v14, 0x1

    aget v17, p4, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 456
    goto/16 :goto_31

    .line 458
    :sswitch_105
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 459
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v18, v18, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 460
    goto/16 :goto_31

    .line 462
    :sswitch_120
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    add-int/lit8 v4, v14, 0x0

    aget v18, p4, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 464
    goto/16 :goto_31

    .line 466
    :sswitch_13a
    const/4 v4, 0x0

    add-int/lit8 v6, v14, 0x0

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 467
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v17, v17, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 468
    goto/16 :goto_31

    .line 470
    :sswitch_155
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    add-int/lit8 v4, v14, 0x0

    aget v17, p4, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 472
    goto/16 :goto_31

    .line 474
    :sswitch_16f
    add-int/lit8 v3, v14, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v7, p4, v3

    .line 475
    add-int/lit8 v3, v14, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    .line 474
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 477
    add-int/lit8 v3, v14, 0x2

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 478
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 479
    add-int/lit8 v4, v14, 0x4

    aget v4, p4, v4

    add-float v18, v18, v4

    .line 480
    add-int/lit8 v4, v14, 0x5

    aget v4, p4, v4

    add-float v17, v17, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 482
    goto/16 :goto_31

    .line 484
    :sswitch_1af
    add-int/lit8 v3, v14, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v7, p4, v3

    .line 485
    add-int/lit8 v3, v14, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    .line 484
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 486
    add-int/lit8 v3, v14, 0x4

    aget v18, p4, v3

    .line 487
    add-int/lit8 v3, v14, 0x5

    aget v17, p4, v3

    .line 488
    add-int/lit8 v3, v14, 0x2

    aget v5, p4, v3

    .line 489
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 490
    goto/16 :goto_31

    .line 492
    :sswitch_1e7
    const/4 v6, 0x0

    .line 493
    const/4 v4, 0x0

    .line 494
    const/16 v7, 0x63

    move/from16 v0, p2

    if-eq v0, v7, :cond_1f5

    const/16 v7, 0x73

    move/from16 v0, p2

    if-ne v0, v7, :cond_231

    .line 496
    :cond_1f5
    sub-float v4, v18, v5

    .line 497
    sub-float v5, v17, v3

    .line 500
    :goto_1f9
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v7, p4, v3

    .line 501
    add-int/lit8 v3, v14, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    .line 499
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 503
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 504
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 505
    add-int/lit8 v4, v14, 0x2

    aget v4, p4, v4

    add-float v18, v18, v4

    .line 506
    add-int/lit8 v4, v14, 0x3

    aget v4, p4, v4

    add-float v17, v17, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 507
    goto/16 :goto_31

    .line 495
    :cond_231
    const/16 v7, 0x43

    move/from16 v0, p2

    if-eq v0, v7, :cond_1f5

    const/16 v7, 0x53

    move/from16 v0, p2

    if-eq v0, v7, :cond_1f5

    move v5, v4

    move v4, v6

    goto :goto_1f9

    .line 511
    :sswitch_240
    const/16 v4, 0x63

    move/from16 v0, p2

    if-eq v0, v4, :cond_24c

    const/16 v4, 0x73

    move/from16 v0, p2

    if-ne v0, v4, :cond_286

    .line 513
    :cond_24c
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v18

    sub-float/2addr v4, v5

    .line 514
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v17

    sub-float/2addr v5, v3

    .line 517
    :goto_256
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    .line 516
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 518
    add-int/lit8 v3, v14, 0x0

    aget v5, p4, v3

    .line 519
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    .line 520
    add-int/lit8 v4, v14, 0x2

    aget v18, p4, v4

    .line 521
    add-int/lit8 v4, v14, 0x3

    aget v17, p4, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 522
    goto/16 :goto_31

    .line 512
    :cond_286
    const/16 v4, 0x43

    move/from16 v0, p2

    if-eq v0, v4, :cond_24c

    const/16 v4, 0x53

    move/from16 v0, p2

    if-eq v0, v4, :cond_24c

    move/from16 v5, v17

    move/from16 v4, v18

    goto :goto_256

    .line 524
    :sswitch_297
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x2

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x3

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 525
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 526
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 527
    add-int/lit8 v4, v14, 0x2

    aget v4, p4, v4

    add-float v18, v18, v4

    .line 528
    add-int/lit8 v4, v14, 0x3

    aget v4, p4, v4

    add-float v17, v17, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 529
    goto/16 :goto_31

    .line 531
    :sswitch_2cf
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x2

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x3

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 532
    add-int/lit8 v3, v14, 0x0

    aget v5, p4, v3

    .line 533
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    .line 534
    add-int/lit8 v4, v14, 0x2

    aget v18, p4, v4

    .line 535
    add-int/lit8 v4, v14, 0x3

    aget v17, p4, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 536
    goto/16 :goto_31

    .line 538
    :sswitch_2ff
    const/4 v6, 0x0

    .line 539
    const/4 v4, 0x0

    .line 540
    const/16 v7, 0x71

    move/from16 v0, p2

    if-eq v0, v7, :cond_30d

    const/16 v7, 0x74

    move/from16 v0, p2

    if-ne v0, v7, :cond_339

    .line 542
    :cond_30d
    sub-float v4, v18, v5

    .line 543
    sub-float v3, v17, v3

    .line 546
    :goto_311
    add-int/lit8 v5, v14, 0x0

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    .line 545
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 547
    add-float v5, v18, v4

    .line 548
    add-float v3, v3, v17

    .line 549
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v18, v18, v4

    .line 550
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-float v17, v17, v4

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 551
    goto/16 :goto_31

    .line 541
    :cond_339
    const/16 v7, 0x51

    move/from16 v0, p2

    if-eq v0, v7, :cond_30d

    const/16 v7, 0x54

    move/from16 v0, p2

    if-eq v0, v7, :cond_30d

    move v3, v4

    move v4, v6

    goto :goto_311

    .line 555
    :sswitch_348
    const/16 v4, 0x71

    move/from16 v0, p2

    if-eq v0, v4, :cond_354

    const/16 v4, 0x74

    move/from16 v0, p2

    if-ne v0, v4, :cond_384

    .line 557
    :cond_354
    :goto_354
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v18

    sub-float v18, v4, v5

    .line 558
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v17

    sub-float v17, v4, v3

    .line 561
    :cond_360
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 564
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    .line 565
    add-int/lit8 v3, v14, 0x1

    aget v4, p4, v3

    move/from16 v5, v17

    move/from16 v7, v18

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    .line 566
    goto/16 :goto_31

    .line 556
    :cond_384
    const/16 v4, 0x51

    move/from16 v0, p2

    if-eq v0, v4, :cond_354

    const/16 v4, 0x54

    move/from16 v0, p2

    if-ne v0, v4, :cond_360

    goto :goto_354

    .line 572
    :sswitch_391
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v6, v3, v18

    .line 573
    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    add-float v7, v3, v17

    .line 574
    add-int/lit8 v3, v14, 0x0

    aget v8, p4, v3

    .line 575
    add-int/lit8 v3, v14, 0x1

    aget v9, p4, v3

    .line 576
    add-int/lit8 v3, v14, 0x2

    aget v10, p4, v3

    .line 577
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3db

    const/4 v11, 0x1

    .line 578
    :goto_3b3
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3dd

    const/4 v12, 0x1

    :goto_3bd
    move-object/from16 v3, p0

    move/from16 v4, v18

    move/from16 v5, v17

    .line 569
    invoke-static/range {v3 .. v12}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 579
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 580
    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move v8, v3

    move v9, v5

    move v5, v3

    .line 583
    goto/16 :goto_31

    .line 577
    :cond_3db
    const/4 v11, 0x0

    goto :goto_3b3

    .line 578
    :cond_3dd
    const/4 v12, 0x0

    goto :goto_3bd

    .line 588
    :sswitch_3df
    add-int/lit8 v3, v14, 0x5

    aget v6, p4, v3

    .line 589
    add-int/lit8 v3, v14, 0x6

    aget v7, p4, v3

    .line 590
    add-int/lit8 v3, v14, 0x0

    aget v8, p4, v3

    .line 591
    add-int/lit8 v3, v14, 0x1

    aget v9, p4, v3

    .line 592
    add-int/lit8 v3, v14, 0x2

    aget v10, p4, v3

    .line 593
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_421

    const/4 v11, 0x1

    .line 594
    :goto_3fd
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_423

    const/4 v12, 0x1

    :goto_407
    move-object/from16 v3, p0

    move/from16 v4, v18

    move/from16 v5, v17

    .line 585
    invoke-static/range {v3 .. v12}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 595
    add-int/lit8 v3, v14, 0x5

    aget v5, p4, v3

    .line 596
    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move v8, v3

    move v9, v5

    move v5, v3

    .line 599
    goto/16 :goto_31

    .line 593
    :cond_421
    const/4 v11, 0x0

    goto :goto_3fd

    .line 594
    :cond_423
    const/4 v12, 0x0

    goto :goto_407

    .line 603
    :cond_425
    const/4 v4, 0x0

    aput v18, p1, v4

    .line 604
    const/4 v4, 0x1

    aput v17, p1, v4

    .line 605
    const/4 v4, 0x2

    aput v5, p1, v4

    .line 606
    const/4 v4, 0x3

    aput v3, p1, v4

    .line 607
    const/4 v3, 0x4

    aput v16, p1, v3

    .line 608
    const/4 v3, 0x5

    aput v15, p1, v3

    .line 609
    return-void

    .line 374
    :sswitch_data_438
    .sparse-switch
        0x41 -> :sswitch_5a
        0x43 -> :sswitch_54
        0x48 -> :sswitch_51
        0x4c -> :sswitch_4e
        0x4d -> :sswitch_4e
        0x51 -> :sswitch_57
        0x53 -> :sswitch_57
        0x54 -> :sswitch_4e
        0x56 -> :sswitch_51
        0x5a -> :sswitch_40
        0x61 -> :sswitch_5a
        0x63 -> :sswitch_54
        0x68 -> :sswitch_51
        0x6c -> :sswitch_4e
        0x6d -> :sswitch_4e
        0x71 -> :sswitch_57
        0x73 -> :sswitch_57
        0x74 -> :sswitch_4e
        0x76 -> :sswitch_51
        0x7a -> :sswitch_40
    .end sparse-switch

    .line 418
    :sswitch_data_48a
    .sparse-switch
        0x41 -> :sswitch_3df
        0x43 -> :sswitch_1af
        0x48 -> :sswitch_120
        0x4c -> :sswitch_e5
        0x4d -> :sswitch_91
        0x51 -> :sswitch_2cf
        0x53 -> :sswitch_240
        0x54 -> :sswitch_348
        0x56 -> :sswitch_155
        0x61 -> :sswitch_391
        0x63 -> :sswitch_16f
        0x68 -> :sswitch_105
        0x6c -> :sswitch_c1
        0x6d -> :sswitch_5d
        0x71 -> :sswitch_297
        0x73 -> :sswitch_1e7
        0x74 -> :sswitch_2ff
        0x76 -> :sswitch_13a
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 52

    .prologue
    .line 716
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    .line 719
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 720
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 721
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 722
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 723
    move-wide/from16 v0, p5

    neg-double v6, v0

    mul-double v6, v6, v22

    mul-double/2addr v6, v4

    mul-double v8, p7, v24

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    .line 724
    move-wide/from16 v0, p5

    neg-double v8, v0

    mul-double v8, v8, v24

    mul-double/2addr v4, v8

    mul-double v8, p7, v22

    mul-double/2addr v2, v8

    add-double/2addr v4, v2

    .line 726
    move/from16 v0, v20

    int-to-double v2, v0

    div-double v26, p17, v2

    .line 727
    const/4 v2, 0x0

    move v9, v2

    move-wide v2, v4

    move-wide v4, v6

    :goto_42
    move/from16 v0, v20

    if-ge v9, v0, :cond_dd

    .line 728
    add-double v14, p15, v26

    .line 729
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 730
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 731
    mul-double v12, p5, v22

    mul-double/2addr v12, v10

    add-double v12, v12, p1

    mul-double v16, p7, v24

    mul-double v16, v16, v6

    sub-double v18, v12, v16

    .line 732
    mul-double v12, p5, v24

    mul-double/2addr v12, v10

    add-double v12, v12, p3

    mul-double v16, p7, v22

    mul-double v16, v16, v6

    add-double v16, v16, v12

    .line 733
    move-wide/from16 v0, p5

    neg-double v12, v0

    mul-double v12, v12, v22

    mul-double/2addr v12, v6

    mul-double v28, p7, v24

    mul-double v28, v28, v10

    sub-double v12, v12, v28

    .line 734
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    mul-double v6, v6, v28

    mul-double v28, p7, v22

    mul-double v10, v10, v28

    add-double/2addr v10, v6

    .line 735
    sub-double v6, v14, p15

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 737
    sub-double v28, v14, p15

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    mul-double v30, v30, v6

    mul-double v6, v6, v30

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    add-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v30

    mul-double v6, v6, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v6, v6, v28

    .line 738
    mul-double/2addr v4, v6

    add-double v4, v4, p9

    .line 739
    mul-double/2addr v2, v6

    add-double v28, p11, v2

    .line 740
    mul-double v2, v6, v12

    sub-double v30, v18, v2

    .line 741
    mul-double v2, v6, v10

    sub-double v6, v16, v2

    .line 744
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 746
    double-to-float v3, v4

    .line 747
    move-wide/from16 v0, v28

    double-to-float v4, v0

    .line 748
    move-wide/from16 v0, v30

    double-to-float v5, v0

    .line 749
    double-to-float v6, v6

    .line 750
    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 751
    move-wide/from16 v0, v16

    double-to-float v8, v0

    move-object/from16 v2, p0

    .line 746
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 727
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v4, v12

    move-wide/from16 p15, v14

    move-wide/from16 p11, v16

    move-wide/from16 p9, v18

    move-wide v2, v10

    goto/16 :goto_42

    .line 758
    :cond_dd
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 40

    .prologue
    .line 623
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 625
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 626
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 629
    move/from16 v0, p1

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p2

    float-to-double v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    move/from16 v0, p5

    float-to-double v4, v0

    div-double v6, v2, v4

    .line 630
    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double/2addr v2, v10

    move/from16 v0, p2

    float-to-double v4, v0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    move/from16 v0, p6

    float-to-double v4, v0

    div-double v12, v2, v4

    .line 631
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    move/from16 v0, p5

    float-to-double v4, v0

    div-double v14, v2, v4

    .line 632
    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double/2addr v2, v10

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    move/from16 v0, p6

    float-to-double v4, v0

    div-double v20, v2, v4

    .line 635
    sub-double v2, v6, v14

    .line 636
    sub-double v4, v12, v20

    .line 637
    add-double v18, v6, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    .line 638
    add-double v22, v12, v20

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    .line 640
    mul-double v24, v2, v2

    mul-double v26, v4, v4

    add-double v24, v24, v26

    .line 641
    const-wide/16 v26, 0x0

    cmpl-double v26, v24, v26

    if-nez v26, :cond_6f

    .line 642
    const-string/jumbo v2, "PathParser"

    const-string/jumbo v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void

    .line 645
    :cond_6f
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v26, v26, v24

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    sub-double v26, v26, v28

    .line 646
    const-wide/16 v28, 0x0

    cmpg-double v28, v26, v28

    if-gez v28, :cond_bc

    .line 647
    const-string/jumbo v2, "PathParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Points are too far apart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 649
    mul-float v7, p5, v2

    .line 650
    mul-float v8, p6, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 649
    invoke-static/range {v2 .. v11}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 651
    return-void

    .line 653
    :cond_bc
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 654
    mul-double v2, v2, v24

    .line 655
    mul-double v4, v4, v24

    .line 658
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_118

    .line 659
    sub-double v4, v18, v4

    .line 660
    add-double v2, v2, v22

    .line 666
    :goto_ce
    sub-double/2addr v12, v2

    sub-double/2addr v6, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 668
    sub-double v6, v20, v2

    sub-double v12, v14, v4

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 670
    sub-double v20, v6, v18

    .line 671
    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-ltz v6, :cond_11d

    const/4 v6, 0x1

    :goto_e5
    move/from16 v0, p9

    if-eq v0, v6, :cond_f6

    .line 672
    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-lez v6, :cond_11f

    .line 673
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v6

    .line 679
    :cond_f6
    :goto_f6
    move/from16 v0, p5

    float-to-double v6, v0

    mul-double/2addr v6, v4

    .line 680
    move/from16 v0, p6

    float-to-double v4, v0

    mul-double/2addr v2, v4

    .line 682
    mul-double v4, v6, v8

    mul-double v12, v2, v10

    sub-double/2addr v4, v12

    .line 683
    mul-double/2addr v6, v10

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    .line 685
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroid/support/v4/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 686
    return-void

    .line 662
    :cond_118
    add-double v4, v4, v18

    .line 663
    sub-double v2, v22, v2

    goto :goto_ce

    .line 671
    :cond_11d
    const/4 v6, 0x0

    goto :goto_e5

    .line 675
    :cond_11f
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v6

    goto :goto_f6
.end method

.method public static nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7

    .prologue
    .line 336
    const/4 v0, 0x6

    new-array v2, v0, [F

    .line 337
    const/16 v1, 0x6d

    .line 338
    const/4 v0, 0x0

    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    .line 339
    aget-object v3, p0, v0

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v0

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v2, v1, v3, v4}, Landroid/support/v4/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 340
    aget-object v1, p0, v0

    iget-char v1, v1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 342
    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/support/v4/graphics/PathParser$PathDataNode;F)V
    .registers 8

    .prologue
    .line 355
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 356
    iget-object v1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    .line 357
    iget-object v3, p2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    .line 356
    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_1b
    return-void
.end method
