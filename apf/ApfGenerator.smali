.class public Landroid/net/apf/ApfGenerator;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfGenerator$ExtendedOpcodes;,
        Landroid/net/apf/ApfGenerator$IllegalInstructionException;,
        Landroid/net/apf/ApfGenerator$Instruction;,
        Landroid/net/apf/ApfGenerator$Opcodes;,
        Landroid/net/apf/ApfGenerator$Register;
    }
.end annotation


# static fields
.field public static final DROP_LABEL:Ljava/lang/String; = "__DROP__"

.field public static final FILTER_AGE_MEMORY_SLOT:I = 0xf

.field public static final FIRST_PREFILLED_MEMORY_SLOT:I = 0xd

.field public static final IPV4_HEADER_SIZE_MEMORY_SLOT:I = 0xd

.field public static final LAST_PREFILLED_MEMORY_SLOT:I = 0xf

.field public static final MEMORY_SLOTS:I = 0x10

.field public static final PACKET_SIZE_MEMORY_SLOT:I = 0xe

.field public static final PASS_LABEL:Ljava/lang/String; = "__PASS__"


# instance fields
.field private final mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

.field private mGenerated:Z

.field private final mInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;


# direct methods
.method static synthetic -get0(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .registers 2

    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .registers 2

    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    .line 360
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    .line 361
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    .line 30
    return-void
.end method

.method private addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V
    .registers 4

    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    if-eqz v0, :cond_d

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Program already generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_d
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method private updateInstructionOffsets()I
    .registers 4

    .prologue
    .line 826
    const/4 v0, 0x0

    .line 827
    iget-object v1, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    .line 828
    iput v1, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 829
    invoke-virtual {v0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 831
    :cond_1d
    return v1
.end method


# virtual methods
.method public addAdd(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 485
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 486
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 487
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 488
    return-object p0
.end method

.method public addAddR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 556
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 557
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 558
    return-object p0
.end method

.method public addAnd(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 515
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 516
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 517
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 518
    return-object p0
.end method

.method public addAndR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 584
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 585
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 586
    return-object p0
.end method

.method public addDiv(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 505
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 507
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 508
    return-object p0
.end method

.method public addDivR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 574
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 575
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 576
    return-object p0
.end method

.method public addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 406
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 409
    return-object p0
.end method

.method public addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 739
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    if-ne p1, v0, :cond_d

    .line 740
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    const-string/jumbo v1, "JNEBS fails with R1"

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_d
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 743
    array-length v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 744
    invoke-virtual {v0, p3}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setCompareBytes([B)V

    .line 746
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 747
    return-object p0
.end method

.method public addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 672
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 673
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 674
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 676
    return-object p0
.end method

.method public addJumpIfR0AnyBitsSetR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 727
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 728
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 729
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 730
    return-object p0
.end method

.method public addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 624
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 626
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 628
    return-object p0
.end method

.method public addJumpIfR0EqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 683
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 686
    return-object p0
.end method

.method public addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 648
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 650
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 652
    return-object p0
.end method

.method public addJumpIfR0GreaterThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 705
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 706
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 708
    return-object p0
.end method

.method public addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 660
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 662
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 663
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 664
    return-object p0
.end method

.method public addJumpIfR0LessThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 716
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 717
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 719
    return-object p0
.end method

.method public addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 636
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 637
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 638
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 640
    return-object p0
.end method

.method public addJumpIfR0NotEqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 694
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 695
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 697
    return-object p0
.end method

.method public addLeftShift(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 535
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 536
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 537
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 538
    return-object p0
.end method

.method public addLeftShiftR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 604
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 605
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 606
    return-object p0
.end method

.method public addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 428
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 429
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 430
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 431
    return-object p0
.end method

.method public addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 463
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 464
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 465
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 466
    return-object p0
.end method

.method public addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 439
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 440
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 441
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 442
    return-object p0
.end method

.method public addLoad32Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 475
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 476
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 477
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 478
    return-object p0
.end method

.method public addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 417
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 418
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 419
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 420
    return-object p0
.end method

.method public addLoad8Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 451
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 452
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 453
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 454
    return-object p0
.end method

.method public addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 756
    if-ltz p2, :cond_6

    const/16 v0, 0xf

    if-le p2, v0, :cond_20

    .line 757
    :cond_6
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal memory slot number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_20
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 760
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 761
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 762
    return-object p0
.end method

.method public addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5

    .prologue
    .line 613
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 614
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 615
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 616
    return-object p0
.end method

.method public addMove(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 815
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 816
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 817
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 818
    return-object p0
.end method

.method public addMul(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 495
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 497
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 498
    return-object p0
.end method

.method public addMulR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 565
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 566
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 567
    return-object p0
.end method

.method public addNeg(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 794
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 795
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 796
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 797
    return-object p0
.end method

.method public addNot(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 784
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 785
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 786
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 787
    return-object p0
.end method

.method public addOr(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 525
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 527
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 528
    return-object p0
.end method

.method public addOrR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 594
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 595
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 596
    return-object p0
.end method

.method public addRightShift(I)Landroid/net/apf/ApfGenerator;
    .registers 4

    .prologue
    .line 546
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 547
    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 548
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 549
    return-object p0
.end method

.method public addStoreToMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 771
    if-ltz p2, :cond_6

    const/16 v0, 0xf

    if-le p2, v0, :cond_20

    .line 772
    :cond_6
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal memory slot number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_20
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 775
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 776
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 777
    return-object p0
.end method

.method public addSwap()Landroid/net/apf/ApfGenerator;
    .registers 3

    .prologue
    .line 804
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 805
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 806
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 807
    return-object p0
.end method

.method public defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setLabel(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 399
    return-object p0
.end method

.method public generate()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 851
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    if-eqz v0, :cond_f

    .line 852
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only generate() once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_f
    iput-boolean v4, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    .line 863
    const/16 v0, 0xa

    .line 865
    :goto_13
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    move-result v5

    .line 867
    iget-object v1, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    add-int/lit8 v2, v5, 0x1

    iput v2, v1, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 868
    iget-object v1, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    iput v5, v1, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 870
    add-int/lit8 v1, v0, -0x1

    if-nez v0, :cond_3d

    .line 880
    :cond_25
    new-array v1, v5, [B

    .line 881
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    .line 882
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->generate([B)V

    goto :goto_2d

    .line 873
    :cond_3d
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    .line 874
    invoke-virtual {v0}, Landroid/net/apf/ApfGenerator$Instruction;->shrink()Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v4

    :goto_57
    move v2, v0

    goto :goto_44

    .line 878
    :cond_59
    if-eqz v2, :cond_25

    move v0, v1

    goto :goto_13

    .line 884
    :cond_5d
    return-object v1

    :cond_5e
    move v0, v2

    goto :goto_57
.end method

.method public programLengthOverEstimate()I
    .registers 2

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    move-result v0

    return v0
.end method

.method public setApfVersion(I)Z
    .registers 3

    .prologue
    .line 370
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
