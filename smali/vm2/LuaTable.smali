###### Class vm2.LuaTable (vm2.LuaTable)
.class public Lvm2/LuaTable;
.super Lvm2/LuaValue;
.source "LuaTable.java"

# interfaces
.implements Lvm2/Metatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/LuaTable$Slot;,
        Lvm2/LuaTable$StrongSlot;,
        Lvm2/LuaTable$Entry;,
        Lvm2/LuaTable$DeadSlot;,
        Lvm2/LuaTable$IntKeyEntry;,
        Lvm2/LuaTable$NumberValueEntry;,
        Lvm2/LuaTable$NormalEntry;,
        Lvm2/LuaTable$LinkSlot;
    }
.end annotation


# static fields
.field private static final MIN_HASH_CAPACITY:I = 0x2

.field private static final N:Lvm2/LuaString;

.field private static final NOBUCKETS:[Lvm2/LuaTable$Slot;


# instance fields
.field protected array:[Lvm2/LuaValue;

.field protected hash:[Lvm2/LuaTable$Slot;

.field protected hashEntries:I

.field protected m_metatable:Lvm2/Metatable;

.field protected maxKey:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-string v0, "n"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/LuaTable;->N:Lvm2/LuaString;

    const/4 v0, 0x0

    .line 1378
    new-array v0, v0, [Lvm2/LuaTable$Slot;

    sput-object v0, Lvm2/LuaTable;->NOBUCKETS:[Lvm2/LuaTable$Slot;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lvm2/LuaTable;->maxKey:I

    .line 94
    sget-object v0, Lvm2/LuaValue;->NOVALS:[Lvm2/LuaValue;

    iput-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    .line 95
    sget-object v0, Lvm2/LuaTable;->NOBUCKETS:[Lvm2/LuaTable$Slot;

    iput-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 103
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lvm2/LuaTable;->maxKey:I

    .line 104
    invoke-virtual {p0, p1, p2}, Lvm2/LuaTable;->presize(II)V

    return-void
.end method

.method public constructor <init>(Lvm2/Varargs;)V
    .registers 3

    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, p1, v0}, Lvm2/LuaTable;-><init>(Lvm2/Varargs;I)V

    return-void
.end method

.method public constructor <init>(Lvm2/Varargs;I)V
    .registers 7

    .line 141
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lvm2/LuaTable;->maxKey:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 143
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v1

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 144
    invoke-virtual {p0, v1, v0}, Lvm2/LuaTable;->presize(II)V

    .line 145
    sget-object v2, Lvm2/LuaTable;->N:Lvm2/LuaString;

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :goto_1e
    if-gt v0, v1, :cond_2c

    add-int v2, v0, p2

    .line 147
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2c
    return-void
.end method

.method public constructor <init>([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)V
    .registers 10

    .line 113
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lvm2/LuaTable;->maxKey:I

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 114
    array-length v1, p1

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    if-eqz p2, :cond_10

    .line 115
    array-length v2, p2

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    if-eqz p3, :cond_18

    .line 116
    invoke-virtual {p3}, Lvm2/Varargs;->narg()I

    move-result v3

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    add-int/2addr v3, v2

    shr-int/lit8 v4, v1, 0x1

    .line 117
    invoke-virtual {p0, v3, v4}, Lvm2/LuaTable;->presize(II)V

    move v3, v0

    :goto_20
    if-ge v3, v2, :cond_2b

    add-int/lit8 v4, v3, 0x1

    .line 119
    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lvm2/LuaTable;->rawset(ILvm2/LuaValue;)V

    move v3, v4

    goto :goto_20

    :cond_2b
    if-eqz p3, :cond_40

    .line 121
    invoke-virtual {p3}, Lvm2/Varargs;->narg()I

    move-result p2

    const/4 v3, 0x1

    :goto_32
    if-gt v3, p2, :cond_40

    add-int v4, v2, v3

    .line 122
    invoke-virtual {p3, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lvm2/LuaTable;->rawset(ILvm2/LuaValue;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_40
    :goto_40
    if-ge v0, v1, :cond_56

    add-int/lit8 p2, v0, 0x1

    .line 124
    aget-object p3, p1, p2

    invoke-virtual {p3}, Lvm2/LuaValue;->isnil()Z

    move-result p3

    if-nez p3, :cond_53

    .line 125
    aget-object p3, p1, v0

    aget-object p2, p1, p2

    invoke-virtual {p0, p3, p2}, Lvm2/LuaTable;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_53
    add-int/lit8 v0, v0, 0x2

    goto :goto_40

    :cond_56
    return-void
.end method

.method private arrayset(ILvm2/LuaValue;)Z
    .registers 6

    if-lez p1, :cond_25

    .line 291
    iget-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v0, v0

    if-gt p1, v0, :cond_25

    .line 292
    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lvm2/LuaTable;->updateMaxKey(IZ)V

    .line 293
    iget-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p2, 0x0

    goto :goto_22

    .line 294
    :cond_1a
    iget-object v2, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v2, :cond_22

    invoke-interface {v2, p2}, Lvm2/Metatable;->wrap(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p2

    :cond_22
    :goto_22
    aput-object p2, v0, p1

    return v1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private checkLoadFactor()Z
    .registers 3

    .line 575
    iget v0, p0, Lvm2/LuaTable;->hashEntries:I

    iget-object v1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private compare(IILvm2/LuaValue;)Z
    .registers 4

    .line 859
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p2}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object p2

    if-eqz p1, :cond_1d

    if-nez p2, :cond_d

    goto :goto_1d

    :cond_d
    if-eqz p3, :cond_18

    .line 863
    invoke-virtual {p3, p1, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    return p1

    .line 865
    :cond_18
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    return p1
.end method

.method private countHashKeys()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 580
    :goto_2
    iget-object v2, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v3, v2

    if-ge v0, v3, :cond_1b

    .line 581
    aget-object v2, v2, v0

    :goto_9
    if-eqz v2, :cond_18

    .line 582
    invoke-interface {v2}, Lvm2/LuaTable$Slot;->first()Lvm2/LuaTable$StrongSlot;

    move-result-object v3

    if-eqz v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    .line 581
    :cond_13
    invoke-interface {v2}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v2

    goto :goto_9

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    return v1
.end method

.method private countIntKeys([I)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_5
    const/16 v5, 0x1f

    if-ge v2, v5, :cond_2d

    .line 601
    iget-object v5, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v6, v5

    if-le v3, v6, :cond_f

    goto :goto_2d

    .line 603
    :cond_f
    array-length v5, v5

    shl-int v6, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v0

    :goto_17
    if-gt v3, v5, :cond_27

    .line 606
    iget-object v7, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v7, v3

    if-eqz v3, :cond_25

    add-int/lit8 v6, v6, 0x1

    :cond_25
    move v3, v8

    goto :goto_17

    .line 609
    :cond_27
    aput v6, p1, v2

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 614
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v3, v2

    if-ge v0, v3, :cond_52

    .line 615
    aget-object v2, v2, v0

    :goto_34
    if-eqz v2, :cond_4f

    const v3, 0x7fffffff

    .line 617
    invoke-interface {v2, v3}, Lvm2/LuaTable$Slot;->arraykey(I)I

    move-result v3

    if-lez v3, :cond_4a

    .line 618
    invoke-static {v3}, Lvm2/LuaTable;->log2(I)I

    move-result v3

    aget v5, p1, v3

    add-int/2addr v5, v1

    aput v5, p1, v3

    add-int/lit8 v4, v4, 0x1

    .line 615
    :cond_4a
    invoke-interface {v2}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v2

    goto :goto_34

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_52
    return v4
.end method

.method public static defaultEntry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Entry;
    .registers 5

    .line 800
    invoke-virtual {p0}, Lvm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 801
    new-instance v0, Lvm2/LuaTable$IntKeyEntry;

    invoke-virtual {p0}, Lvm2/LuaValue;->toint()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lvm2/LuaTable$IntKeyEntry;-><init>(ILvm2/LuaValue;)V

    return-object v0

    .line 802
    :cond_10
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 803
    new-instance v0, Lvm2/LuaTable$NumberValueEntry;

    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lvm2/LuaTable$NumberValueEntry;-><init>(Lvm2/LuaValue;D)V

    return-object v0

    .line 805
    :cond_21
    new-instance v0, Lvm2/LuaTable$NormalEntry;

    invoke-direct {v0, p0, p1}, Lvm2/LuaTable$NormalEntry;-><init>(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-object v0
.end method

.method private dropWeakArrayValues()V
    .registers 4

    const/4 v0, 0x0

    .line 590
    :goto_1
    iget-object v1, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 591
    iget-object v2, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    invoke-interface {v2, v1, v0}, Lvm2/Metatable;->arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private hashRemove(Lvm2/LuaValue;)V
    .registers 5

    .line 561
    iget-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v0, v0

    if-lez v0, :cond_2b

    .line 562
    invoke-direct {p0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;)I

    move-result v0

    .line 563
    iget-object v1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    aget-object v1, v1, v0

    :goto_d
    if-eqz v1, :cond_2b

    .line 565
    invoke-interface {v1, p1}, Lvm2/LuaTable$Slot;->find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 566
    iget-object p1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    aget-object v1, p1, v0

    invoke-interface {v1, v2}, Lvm2/LuaTable$Slot;->remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;

    move-result-object v1

    aput-object v1, p1, v0

    .line 567
    iget p1, p0, Lvm2/LuaTable;->hashEntries:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lvm2/LuaTable;->hashEntries:I

    return-void

    .line 563
    :cond_26
    invoke-interface {v1}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v1

    goto :goto_d

    :cond_2b
    return-void
.end method

.method private hashSlot(Lvm2/LuaValue;)I
    .registers 3

    .line 557
    iget-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;I)I

    move-result p1

    return p1
.end method

.method public static hashSlot(Lvm2/LuaValue;I)I
    .registers 4

    .line 539
    invoke-virtual {p0}, Lvm2/LuaValue;->type()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0, p1}, Lvm2/LuaTable;->hashpow2(II)I

    move-result p0

    return p0

    .line 545
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0, p1}, Lvm2/LuaTable;->hashmod(II)I

    move-result p0

    return p0
.end method

.method public static hashmod(II)I
    .registers 3

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    .line 529
    rem-int/2addr p0, p1

    return p0
.end method

.method public static hashpow2(II)I
    .registers 2

    .line 0
    and-int/2addr p0, p1

    return p0
.end method

.method private heapSort(ILvm2/LuaValue;)V
    .registers 6

    .line 829
    invoke-direct {p0, p1, p2}, Lvm2/LuaTable;->heapify(ILvm2/LuaValue;)V

    :goto_3
    const/4 v0, 0x1

    if-le p1, v0, :cond_1a

    .line 831
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    .line 832
    invoke-virtual {p0, v0}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    .line 833
    invoke-virtual {p0, v0, v1}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    add-int/lit8 p1, p1, -0x1

    .line 834
    invoke-direct {p0, v0, p1, p2}, Lvm2/LuaTable;->siftDown(IILvm2/LuaValue;)V

    goto :goto_3

    :cond_1a
    return-void
.end method

.method private heapify(ILvm2/LuaValue;)V
    .registers 4

    .line 839
    div-int/lit8 v0, p1, 0x2

    :goto_2
    if-lez v0, :cond_a

    .line 840
    invoke-direct {p0, v0, p1, p2}, Lvm2/LuaTable;->siftDown(IILvm2/LuaValue;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method public static isLargeKey(Lvm2/LuaValue;)Z
    .registers 5

    .line 788
    invoke-virtual {p0}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    const/4 v1, 0x5

    const/4 v3, 0x1

    if-eq v0, v1, :cond_10

    return v3

    .line 790
    :cond_10
    invoke-virtual {p0}, Lvm2/LuaValue;->rawlen()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_19

    return v3

    :cond_19
    return v2
.end method

.method public static log2(I)I
    .registers 4

    .line 0
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_7

    const/high16 p0, -0x80000000

    return p0

    :cond_7
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    ushr-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const v2, 0xff00

    and-int/2addr v2, p0

    if-eqz v2, :cond_1d

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_1d
    and-int/lit16 v2, p0, 0xf0

    if-eqz v2, :cond_25

    add-int/lit8 v0, v0, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_25
    packed-switch p0, :pswitch_data_58

    return v0

    :pswitch_29
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_2c
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_2f
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_32
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_35
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_38
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_3b
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_3e
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_41
    add-int/lit8 v0, v0, 0x3

    return v0

    :pswitch_44
    add-int/lit8 v0, v0, 0x3

    return v0

    :pswitch_47
    add-int/lit8 v0, v0, 0x3

    return v0

    :pswitch_4a
    add-int/lit8 v0, v0, 0x3

    return v0

    :pswitch_4d
    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_50
    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_53
    add-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private rehash(I)V
    .registers 14

    .line 673
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lvm2/Metatable;->useWeakKeys()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    invoke-interface {v0}, Lvm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 675
    :cond_12
    invoke-direct {p0}, Lvm2/LuaTable;->countHashKeys()I

    move-result v0

    iput v0, p0, Lvm2/LuaTable;->hashEntries:I

    .line 676
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    invoke-interface {v0}, Lvm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 677
    invoke-direct {p0}, Lvm2/LuaTable;->dropWeakArrayValues()V

    :cond_23
    const/16 v0, 0x20

    .line 680
    new-array v1, v0, [I

    .line 681
    invoke-direct {p0, v1}, Lvm2/LuaTable;->countIntKeys([I)I

    move-result v2

    const/4 v3, 0x1

    if-lez p1, :cond_39

    add-int/lit8 v2, v2, 0x1

    .line 684
    invoke-static {p1}, Lvm2/LuaTable;->log2(I)I

    move-result v4

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    :cond_39
    const/4 v4, 0x0

    .line 688
    aget v5, v1, v4

    move v6, v3

    move v7, v4

    :goto_3e
    const/4 v8, 0x2

    if-ge v6, v0, :cond_55

    .line 691
    aget v9, v1, v6

    add-int/2addr v5, v9

    mul-int/lit8 v9, v2, 0x2

    shl-int v10, v3, v6

    if-ge v9, v10, :cond_4b

    goto :goto_55

    :cond_4b
    add-int/lit8 v8, v6, -0x1

    shl-int v8, v3, v8

    if-lt v5, v8, :cond_52

    move v7, v10

    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 700
    :cond_55
    :goto_55
    iget-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    .line 701
    iget-object v2, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    if-lez p1, :cond_5f

    if-gt p1, v7, :cond_5f

    const/4 v5, -0x1

    goto :goto_60

    :cond_5f
    move v5, v4

    .line 710
    :goto_60
    array-length v6, v0

    if-eq v7, v6, :cond_9b

    .line 711
    new-array v6, v7, [Lvm2/LuaValue;

    .line 712
    array-length v9, v0

    if-le v7, v9, :cond_7b

    .line 713
    array-length v9, v0

    add-int/2addr v9, v3

    invoke-static {v9}, Lvm2/LuaTable;->log2(I)I

    move-result v9

    invoke-static {v7}, Lvm2/LuaTable;->log2(I)I

    move-result v10

    add-int/2addr v10, v3

    :goto_73
    if-ge v9, v10, :cond_92

    .line 714
    aget v11, v1, v9

    add-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 716
    :cond_7b
    array-length v9, v0

    if-le v9, v7, :cond_92

    add-int/lit8 v9, v7, 0x1

    .line 717
    invoke-static {v9}, Lvm2/LuaTable;->log2(I)I

    move-result v9

    array-length v10, v0

    invoke-static {v10}, Lvm2/LuaTable;->log2(I)I

    move-result v10

    add-int/2addr v10, v3

    :goto_8a
    if-ge v9, v10, :cond_92

    .line 718
    aget v11, v1, v9

    sub-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_8a

    .line 721
    :cond_92
    array-length v1, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v4, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9c

    :cond_9b
    move-object v6, v0

    .line 726
    :goto_9c
    iget v1, p0, Lvm2/LuaTable;->hashEntries:I

    sub-int/2addr v1, v5

    if-ltz p1, :cond_a6

    if-le p1, v7, :cond_a4

    goto :goto_a6

    :cond_a4
    move p1, v4

    goto :goto_a7

    :cond_a6
    :goto_a6
    move p1, v3

    :goto_a7
    add-int/2addr v1, p1

    .line 728
    array-length p1, v2

    if-lez v1, :cond_b9

    if-ge v1, v8, :cond_ae

    goto :goto_b4

    .line 736
    :cond_ae
    invoke-static {v1}, Lvm2/LuaTable;->log2(I)I

    move-result v1

    shl-int v8, v3, v1

    :goto_b4
    add-int/lit8 v1, v8, -0x1

    .line 738
    new-array v3, v8, [Lvm2/LuaTable$Slot;

    goto :goto_bc

    .line 742
    :cond_b9
    sget-object v3, Lvm2/LuaTable;->NOBUCKETS:[Lvm2/LuaTable$Slot;

    move v1, v4

    :goto_bc
    if-ge v4, p1, :cond_ef

    .line 747
    aget-object v8, v2, v4

    :goto_c0
    if-eqz v8, :cond_ec

    .line 749
    invoke-interface {v8, v7}, Lvm2/LuaTable$Slot;->arraykey(I)I

    move-result v9

    if-lez v9, :cond_d7

    .line 750
    invoke-interface {v8}, Lvm2/LuaTable$Slot;->first()Lvm2/LuaTable$StrongSlot;

    move-result-object v10

    if-eqz v10, :cond_e7

    add-int/lit8 v9, v9, -0x1

    .line 752
    invoke-interface {v10}, Lvm2/LuaTable$StrongSlot;->value()Lvm2/LuaValue;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_e7

    .line 753
    :cond_d7
    instance-of v9, v8, Lvm2/LuaTable$DeadSlot;

    if-nez v9, :cond_e7

    .line 754
    invoke-interface {v8, v1}, Lvm2/LuaTable$Slot;->keyindex(I)I

    move-result v9

    .line 755
    aget-object v10, v3, v9

    invoke-interface {v8, v10}, Lvm2/LuaTable$Slot;->relink(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object v10

    aput-object v10, v3, v9

    .line 747
    :cond_e7
    :goto_e7
    invoke-interface {v8}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v8

    goto :goto_c0

    :cond_ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 761
    :cond_ef
    :goto_ef
    array-length p1, v0

    if-ge v7, p1, :cond_123

    add-int/lit8 p1, v7, 0x1

    .line 763
    aget-object v2, v0, v7

    if-eqz v2, :cond_121

    .line 764
    invoke-static {p1}, Lvm2/LuaInteger;->hashCode(I)I

    move-result v4

    invoke-static {v4, v1}, Lvm2/LuaTable;->hashmod(II)I

    move-result v4

    .line 766
    iget-object v7, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v7, :cond_10f

    .line 767
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lvm2/Metatable;->entry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object v2

    if-nez v2, :cond_117

    goto :goto_121

    .line 771
    :cond_10f
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v7

    invoke-static {v7, v2}, Lvm2/LuaTable;->defaultEntry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object v2

    .line 773
    :cond_117
    aget-object v7, v3, v4

    if-eqz v7, :cond_11f

    .line 774
    invoke-interface {v7, v2}, Lvm2/LuaTable$Slot;->add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object v2

    :cond_11f
    aput-object v2, v3, v4

    :cond_121
    :goto_121
    move v7, p1

    goto :goto_ef

    .line 778
    :cond_123
    iput-object v3, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    .line 779
    iput-object v6, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    .line 780
    iget p1, p0, Lvm2/LuaTable;->hashEntries:I

    sub-int/2addr p1, v5

    iput p1, p0, Lvm2/LuaTable;->hashEntries:I

    return-void
.end method

.method private static resize([Lvm2/LuaValue;I)[Lvm2/LuaValue;
    .registers 4

    .line 186
    new-array p1, p1, [Lvm2/LuaValue;

    .line 187
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private siftDown(IILvm2/LuaValue;)V
    .registers 7

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    if-gt v0, p2, :cond_25

    if-ge v0, p2, :cond_f

    add-int/lit8 v1, v0, 0x1

    .line 846
    invoke-direct {p0, v0, v1, p3}, Lvm2/LuaTable;->compare(IILvm2/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 848
    :cond_f
    invoke-direct {p0, p1, v0, p3}, Lvm2/LuaTable;->compare(IILvm2/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 849
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    .line 850
    invoke-virtual {p0, v0}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    .line 851
    invoke-virtual {p0, v0, v1}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    move p1, v0

    goto :goto_0

    :cond_25
    return-void
.end method

.method private updateMaxKey(IZ)V
    .registers 3

    if-lez p1, :cond_25

    if-eqz p2, :cond_1d

    .line 303
    iget p2, p0, Lvm2/LuaTable;->maxKey:I

    if-ne p1, p2, :cond_25

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_19

    .line 304
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->rawget(I)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result p2

    if-nez p2, :cond_19

    .line 305
    iput p1, p0, Lvm2/LuaTable;->maxKey:I

    return-void

    :cond_19
    const/4 p1, -0x1

    .line 307
    iput p1, p0, Lvm2/LuaTable;->maxKey:I

    return-void

    .line 311
    :cond_1d
    iget p2, p0, Lvm2/LuaTable;->maxKey:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lvm2/LuaTable;->maxKey:I

    :cond_25
    return-void
.end method


# virtual methods
.method public arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;
    .registers 3

    .line 1399
    aget-object p1, p1, p2

    return-object p1
.end method

.method public checktable()Lvm2/LuaTable;
    .registers 1

    .line 0
    return-object p0
.end method

.method public concat(Lvm2/LuaString;II)Lvm2/LuaValue;
    .registers 6

    .line 358
    new-instance v0, Lvm2/Buffer;

    invoke-direct {v0}, Lvm2/Buffer;-><init>()V

    if-gt p2, p3, :cond_25

    .line 360
    invoke-virtual {p0, p2}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    :goto_12
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p3, :cond_25

    .line 362
    invoke-virtual {v0, p1}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    .line 363
    invoke-virtual {p0, p2}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    goto :goto_12

    .line 366
    :cond_25
    invoke-virtual {v0}, Lvm2/Buffer;->tostring()Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public entry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 784
    invoke-static {p1, p2}, Lvm2/LuaTable;->defaultEntry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 901
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->eq_b(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public eq_b(Lvm2/LuaValue;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 904
    :cond_4
    iget-object v1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_23

    .line 905
    :cond_10
    invoke-virtual {p1}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 906
    iget-object v3, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    invoke-interface {v3}, Lvm2/Metatable;->toLuaValue()Lvm2/LuaValue;

    move-result-object v3

    invoke-static {p0, v3, p1, v1}, Lvm2/LuaValue;->eqmtcall(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v2
.end method

.method public get(I)Lvm2/LuaValue;
    .registers 4

    .line 224
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->rawget(I)Lvm2/LuaValue;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v1, :cond_17

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lvm2/LuaValue;->gettable(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_17
    return-object v0
.end method

.method public get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 229
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v1, :cond_13

    invoke-static {p0, p1}, Lvm2/LuaValue;->gettable(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_13
    return-object v0
.end method

.method public getArrayLength()I
    .registers 2

    .line 196
    iget-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v0, v0

    return v0
.end method

.method public getHashLength()I
    .registers 2

    .line 204
    iget-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v0, v0

    return v0
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 208
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lvm2/Metatable;->toLuaValue()Lvm2/LuaValue;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashget(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 254
    iget v0, p0, Lvm2/LuaTable;->hashEntries:I

    if-lez v0, :cond_1e

    .line 255
    iget-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    invoke-direct {p0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;)I

    move-result v1

    aget-object v0, v0, v1

    :goto_c
    if-eqz v0, :cond_1e

    .line 257
    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 258
    invoke-interface {v1}, Lvm2/LuaTable$StrongSlot;->value()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 255
    :cond_19
    invoke-interface {v0}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v0

    goto :goto_c

    .line 262
    :cond_1e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public hashset(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 6

    .line 489
    invoke-virtual {p1}, Lvm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lvm2/LuaTable;->updateMaxKey(IZ)V

    .line 490
    :cond_11
    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 491
    invoke-direct {p0, p1}, Lvm2/LuaTable;->hashRemove(Lvm2/LuaValue;)V

    return-void

    .line 494
    :cond_1b
    iget-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v0, v0

    if-lez v0, :cond_40

    .line 495
    invoke-direct {p0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;)I

    move-result v0

    .line 496
    iget-object v1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    aget-object v1, v1, v0

    :goto_28
    if-eqz v1, :cond_41

    .line 498
    invoke-interface {v1, p1}, Lvm2/LuaTable$Slot;->find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 499
    iget-object p1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    aget-object v1, p1, v0

    invoke-interface {v1, v2, p2}, Lvm2/LuaTable$Slot;->set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p2

    aput-object p2, p1, v0

    return-void

    .line 496
    :cond_3b
    invoke-interface {v1}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v1

    goto :goto_28

    :cond_40
    const/4 v0, 0x0

    .line 504
    :cond_41
    invoke-direct {p0}, Lvm2/LuaTable;->checkLoadFactor()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 505
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lvm2/Metatable;->useWeakValues()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 506
    :cond_51
    invoke-virtual {p1}, Lvm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_6f

    .line 508
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    invoke-direct {p0, v0}, Lvm2/LuaTable;->rehash(I)V

    .line 509
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lvm2/LuaTable;->arrayset(ILvm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_73

    return-void

    :cond_6f
    const/4 v0, -0x1

    .line 512
    invoke-direct {p0, v0}, Lvm2/LuaTable;->rehash(I)V

    .line 514
    :cond_73
    invoke-direct {p0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;)I

    move-result v0

    .line 516
    :cond_77
    iget-object v1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v1, :cond_80

    .line 517
    invoke-interface {v1, p1, p2}, Lvm2/Metatable;->entry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p1

    goto :goto_84

    .line 518
    :cond_80
    invoke-static {p1, p2}, Lvm2/LuaTable;->defaultEntry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object p1

    .line 519
    :goto_84
    iget-object p2, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    aget-object v1, p2, v0

    if-eqz v1, :cond_8e

    invoke-interface {v1, p1}, Lvm2/LuaTable$Slot;->add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    :cond_8e
    aput-object p1, p2, v0

    .line 520
    iget p1, p0, Lvm2/LuaTable;->hashEntries:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvm2/LuaTable;->hashEntries:I

    return-void
.end method

.method public inext(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 4

    .line 478
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 479
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->rawget(I)Lvm2/LuaValue;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    :cond_13
    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILvm2/LuaValue;)V
    .registers 5

    if-nez p1, :cond_8

    .line 342
    invoke-virtual {p0}, Lvm2/LuaTable;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 343
    :cond_8
    :goto_8
    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 344
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 345
    invoke-virtual {p0, p1, p2}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    move-object p2, v0

    move p1, v1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public istable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public keyCount()I
    .registers 4

    .line 874
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const/4 v1, 0x0

    .line 876
    :goto_3
    invoke-virtual {p0, v0}, Lvm2/LuaTable;->next(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public keys()[Lvm2/LuaValue;
    .registers 4

    .line 887
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 888
    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    .line 890
    :goto_7
    invoke-virtual {p0, v1}, Lvm2/LuaTable;->next(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v1

    .line 891
    invoke-virtual {v1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 895
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lvm2/LuaValue;

    .line 896
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    .line 893
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public len()Lvm2/LuaValue;
    .registers 3

    .line 379
    sget-object v0, Lvm2/LuaValue;->LEN:Lvm2/LuaString;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lvm2/LuaValue;->toboolean()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 381
    invoke-virtual {v0, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0

    .line 382
    :cond_11
    invoke-virtual {p0}, Lvm2/LuaTable;->rawlen()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 5

    .line 370
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_2a

    .line 371
    invoke-virtual {p0}, Lvm2/LuaTable;->len()Lvm2/LuaValue;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lvm2/LuaValue;->isint()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 373
    invoke-virtual {v0}, Lvm2/LuaValue;->toint()I

    move-result v0

    return v0

    .line 372
    :cond_13
    new-instance v1, Lvm2/LuaError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table length is not an integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_2a
    invoke-virtual {p0}, Lvm2/LuaTable;->rawlen()I

    move-result v0

    return v0
.end method

.method public next(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 7

    .line 419
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_73

    .line 420
    invoke-virtual {p1}, Lvm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 421
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_1b

    .line 422
    iget-object v3, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v3, v3

    if-gt v0, v3, :cond_1b

    move v2, v0

    goto :goto_73

    .line 426
    :cond_1b
    iget-object v0, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v0, v0

    if-nez v0, :cond_34

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key to \'next\' 1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 428
    :cond_34
    invoke-direct {p0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;)I

    move-result v0

    .line 430
    iget-object v3, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    aget-object v3, v3, v0

    :goto_3c
    if-eqz v3, :cond_57

    if-eqz v2, :cond_4b

    .line 432
    invoke-interface {v3}, Lvm2/LuaTable$Slot;->first()Lvm2/LuaTable$StrongSlot;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 434
    invoke-interface {v4}, Lvm2/LuaTable$StrongSlot;->toVarargs()Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 436
    :cond_4b
    invoke-interface {v3, p1}, Lvm2/LuaTable$Slot;->keyeq(Lvm2/LuaValue;)Z

    move-result v4

    if-eqz v4, :cond_52

    move v2, v1

    .line 430
    :cond_52
    invoke-interface {v3}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object v3

    goto :goto_3c

    :cond_57
    if-nez v2, :cond_6d

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key to \'next\' 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 443
    :cond_6d
    iget-object p1, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length p1, p1

    add-int/2addr p1, v1

    add-int v2, v0, p1

    .line 448
    :cond_73
    :goto_73
    iget-object p1, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v0, p1

    if-ge v2, v0, :cond_94

    .line 449
    aget-object v0, p1, v2

    if-eqz v0, :cond_91

    .line 450
    iget-object v3, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-nez v3, :cond_81

    goto :goto_85

    :cond_81
    invoke-interface {v3, p1, v2}, Lvm2/Metatable;->arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;

    move-result-object v0

    :goto_85
    if-eqz v0, :cond_91

    add-int/2addr v2, v1

    .line 452
    invoke-static {v2}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 458
    :cond_94
    array-length p1, p1

    sub-int/2addr v2, p1

    :goto_96
    iget-object p1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    array-length v0, p1

    if-ge v2, v0, :cond_b2

    .line 459
    aget-object p1, p1, v2

    :goto_9d
    if-eqz p1, :cond_af

    .line 461
    invoke-interface {p1}, Lvm2/LuaTable$Slot;->first()Lvm2/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 463
    invoke-interface {v0}, Lvm2/LuaTable$StrongSlot;->toVarargs()Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 464
    :cond_aa
    invoke-interface {p1}, Lvm2/LuaTable$Slot;->rest()Lvm2/LuaTable$Slot;

    move-result-object p1

    goto :goto_9d

    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 469
    :cond_b2
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public opttable(Lvm2/LuaTable;)Lvm2/LuaTable;
    .registers 2

    .line 0
    return-object p0
.end method

.method public presize(I)V
    .registers 4

    .line 171
    iget-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v1, v0

    if-le p1, v1, :cond_12

    const/4 v1, 0x1

    .line 172
    invoke-static {p1}, Lvm2/LuaTable;->log2(I)I

    move-result p1

    shl-int p1, v1, p1

    invoke-static {v0, p1}, Lvm2/LuaTable;->resize([Lvm2/LuaValue;I)[Lvm2/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    :cond_12
    return-void
.end method

.method public presize(II)V
    .registers 4

    if-lez p2, :cond_6

    const/4 v0, 0x2

    if-ge p2, v0, :cond_6

    move p2, v0

    :cond_6
    const/4 v0, 0x1

    if-lez p1, :cond_12

    .line 179
    invoke-static {p1}, Lvm2/LuaTable;->log2(I)I

    move-result p1

    shl-int p1, v0, p1

    new-array p1, p1, [Lvm2/LuaValue;

    goto :goto_14

    :cond_12
    sget-object p1, Lvm2/LuaValue;->NOVALS:[Lvm2/LuaValue;

    :goto_14
    iput-object p1, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    if-lez p2, :cond_21

    .line 180
    invoke-static {p2}, Lvm2/LuaTable;->log2(I)I

    move-result p1

    shl-int p1, v0, p1

    new-array p1, p1, [Lvm2/LuaTable$Slot;

    goto :goto_23

    :cond_21
    sget-object p1, Lvm2/LuaTable;->NOBUCKETS:[Lvm2/LuaTable$Slot;

    :goto_23
    iput-object p1, p0, Lvm2/LuaTable;->hash:[Lvm2/LuaTable$Slot;

    const/4 p1, 0x0

    .line 181
    iput p1, p0, Lvm2/LuaTable;->hashEntries:I

    return-void
.end method

.method public rawget(I)Lvm2/LuaValue;
    .registers 4

    if-lez p1, :cond_1a

    .line 234
    iget-object v0, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v1, v0

    if-gt p1, v1, :cond_1a

    .line 235
    iget-object v1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    add-int/lit8 p1, p1, -0x1

    if-nez v1, :cond_10

    aget-object p1, v0, p1

    goto :goto_14

    :cond_10
    invoke-interface {v1, v0, p1}, Lvm2/Metatable;->arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;

    move-result-object p1

    :goto_14
    if-eqz p1, :cond_17

    return-object p1

    .line 236
    :cond_17
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 238
    :cond_1a
    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaTable;->hashget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawget(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 242
    invoke-virtual {p1}, Lvm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 243
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_26

    .line 244
    iget-object v1, p0, Lvm2/LuaTable;->array:[Lvm2/LuaValue;

    array-length v2, v1

    if-gt v0, v2, :cond_26

    .line 245
    iget-object p1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-nez p1, :cond_1a

    add-int/lit8 v0, v0, -0x1

    .line 246
    aget-object p1, v1, v0

    goto :goto_20

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v1, v0}, Lvm2/Metatable;->arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;

    move-result-object p1

    :goto_20
    if-eqz p1, :cond_23

    return-object p1

    .line 247
    :cond_23
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 250
    :cond_26
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->hashget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawlen()I
    .registers 5

    .line 386
    iget v0, p0, Lvm2/LuaTable;->maxKey:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_6

    return v0

    .line 388
    :cond_6
    invoke-virtual {p0}, Lvm2/LuaTable;->getArrayLength()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 392
    :goto_c
    invoke-virtual {p0, v1}, Lvm2/LuaTable;->rawget(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1f

    .line 394
    invoke-virtual {p0}, Lvm2/LuaTable;->getHashLength()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_c

    :cond_1f
    :goto_1f
    if-lt v1, v3, :cond_2e

    .line 404
    invoke-virtual {p0, v1}, Lvm2/LuaTable;->rawget(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_2e

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 407
    :cond_2e
    iput v1, p0, Lvm2/LuaTable;->maxKey:I

    return v1
.end method

.method public rawset(ILvm2/LuaValue;)V
    .registers 4

    .line 279
    invoke-direct {p0, p1, p2}, Lvm2/LuaTable;->arrayset(ILvm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 280
    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lvm2/LuaTable;->hashset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_d
    return-void
.end method

.method public rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 4

    .line 285
    invoke-virtual {p1}, Lvm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lvm2/LuaTable;->arrayset(ILvm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 286
    :cond_12
    :goto_12
    invoke-virtual {p0, p1, p2}, Lvm2/LuaTable;->hashset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public remove(I)Lvm2/LuaValue;
    .registers 5

    .line 322
    invoke-virtual {p0}, Lvm2/LuaTable;->length()I

    move-result v0

    if-nez p1, :cond_8

    move p1, v0

    goto :goto_d

    :cond_8
    if-le p1, v0, :cond_d

    .line 326
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 327
    :cond_d
    :goto_d
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v0

    move-object v1, v0

    .line 328
    :goto_12
    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_24

    add-int/lit8 v1, p1, 0x1

    .line 329
    invoke-virtual {p0, v1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    .line 330
    invoke-virtual {p0, p1, v2}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    move p1, v1

    move-object v1, v2

    goto :goto_12

    .line 332
    :cond_24
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result p1

    if-eqz p1, :cond_2d

    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    :cond_2d
    return-object v0
.end method

.method public set(ILvm2/LuaValue;)V
    .registers 4

    .line 266
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lvm2/LuaTable;->rawget(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lvm2/LuaValue;->settable(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 267
    :cond_1a
    :goto_1a
    invoke-virtual {p0, p1, p2}, Lvm2/LuaTable;->rawset(ILvm2/LuaValue;)V

    return-void
.end method

.method public set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 5

    if-eqz p1, :cond_2e

    .line 272
    invoke-virtual {p1}, Lvm2/LuaValue;->isvalidkey()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lvm2/LuaValue;->NEWINDEX:Lvm2/LuaString;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 274
    :cond_14
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Lvm2/LuaTable;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p0, p1, p2}, Lvm2/LuaValue;->settable(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    return-void

    .line 275
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1, p2}, Lvm2/LuaTable;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void

    .line 273
    :cond_2e
    new-instance p2, Lvm2/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\') can not be used as a table index"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 212
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lvm2/Metatable;->useWeakKeys()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 213
    :goto_f
    iget-object v3, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v3, :cond_1b

    invoke-interface {v3}, Lvm2/Metatable;->useWeakValues()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    .line 214
    :goto_1c
    invoke-static {p1}, Lvm2/LuaValue;->metatableOf(Lvm2/LuaValue;)Lvm2/Metatable;

    move-result-object p1

    iput-object p1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz p1, :cond_2c

    .line 215
    invoke-interface {p1}, Lvm2/Metatable;->useWeakKeys()Z

    move-result p1

    if-eqz p1, :cond_2c

    move p1, v1

    goto :goto_2d

    :cond_2c
    move p1, v2

    :goto_2d
    if-ne v0, p1, :cond_3f

    iget-object p1, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz p1, :cond_3a

    .line 216
    invoke-interface {p1}, Lvm2/Metatable;->useWeakValues()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    if-eq v3, v1, :cond_3e

    goto :goto_3f

    :cond_3e
    return-object p0

    .line 218
    :cond_3f
    :goto_3f
    invoke-direct {p0, v2}, Lvm2/LuaTable;->rehash(I)V

    return-object p0
.end method

.method public sort(Lvm2/LuaValue;)V
    .registers 6

    .line 819
    invoke-virtual {p0}, Lvm2/LuaTable;->len()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->tolong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_2e

    .line 820
    iget-object v0, p0, Lvm2/LuaTable;->m_metatable:Lvm2/Metatable;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lvm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 821
    invoke-direct {p0}, Lvm2/LuaTable;->dropWeakArrayValues()V

    .line 823
    :cond_1c
    invoke-virtual {p0}, Lvm2/LuaTable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2d

    .line 825
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 p1, 0x0

    :cond_2a
    invoke-direct {p0, v0, p1}, Lvm2/LuaTable;->heapSort(ILvm2/LuaValue;)V

    :cond_2d
    return-void

    .line 819
    :cond_2e
    new-instance p1, Lvm2/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array too big: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaTable;->len()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->tolong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toLuaValue()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 155
    const-string v0, "table"

    return-object v0
.end method

.method public unpack()Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x1

    .line 911
    invoke-virtual {p0}, Lvm2/LuaTable;->rawlen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvm2/LuaTable;->unpack(II)Lvm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public unpack(I)Lvm2/Varargs;
    .registers 3

    .line 916
    invoke-virtual {p0}, Lvm2/LuaTable;->rawlen()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lvm2/LuaTable;->unpack(II)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public unpack(II)Lvm2/Varargs;
    .registers 6

    if-ge p2, p1, :cond_5

    .line 921
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    :cond_5
    sub-int v0, p2, p1

    if-ltz v0, :cond_82

    const v1, 0xffffff

    if-ge v0, v1, :cond_5e

    const/4 v0, 0x1

    add-int/2addr p2, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_5b

    if-eq p2, v0, :cond_56

    const/4 v1, 0x2

    if-eq p2, v1, :cond_48

    if-gez p2, :cond_1d

    .line 933
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 935
    :cond_1d
    :try_start_1d
    new-array v0, p2, [Lvm2/LuaValue;

    :goto_1f
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2c

    add-int v1, p1, p2

    .line 937
    invoke-virtual {p0, v1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_1f

    .line 938
    :cond_2c
    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_31

    return-object p1

    .line 940
    :catch_31
    new-instance p1, Lvm2/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too many results to unpack [out of memory]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 930
    :cond_48
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object p2

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 929
    :cond_56
    invoke-virtual {p0, p1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 928
    :cond_5b
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 925
    :cond_5e
    new-instance p1, Lvm2/LuaError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many results to unpack: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (max is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 923
    :cond_82
    new-instance p1, Lvm2/LuaError;

    const-string p2, "too many results to unpack: greater 2147483647"

    invoke-direct {p1, p2}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useWeakKeys()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public useWeakValues()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 0
    return-object p1
.end method

###### Class vm2.LuaTable.AnonymousClass1 (vm2.LuaTable$1)
.class synthetic Lvm2/LuaTable$1;
.super Ljava/lang/Object;
.source "LuaTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.LuaTable.DeadSlot (vm2.LuaTable$DeadSlot)
.class Lvm2/LuaTable$DeadSlot;
.super Ljava/lang/Object;
.source "LuaTable.java"

# interfaces
.implements Lvm2/LuaTable$Slot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeadSlot"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private next:Lvm2/LuaTable$Slot;


# direct methods
.method private constructor <init>(Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V
    .registers 4

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    invoke-static {p1}, Lvm2/LuaTable;->isLargeKey(Lvm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_f
    iput-object p1, p0, Lvm2/LuaTable$DeadSlot;->key:Ljava/lang/Object;

    .line 1299
    iput-object p2, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/LuaValue;Lvm2/LuaTable$Slot;Lvm2/LuaTable$1;)V
    .registers 4

    .line 1292
    invoke-direct {p0, p1, p2}, Lvm2/LuaTable$DeadSlot;-><init>(Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V

    return-void
.end method

.method private key()Lvm2/LuaValue;
    .registers 3

    .line 1303
    iget-object v0, p0, Lvm2/LuaTable$DeadSlot;->key:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_c

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_c
    check-cast v0, Lvm2/LuaValue;

    return-object v0
.end method


# virtual methods
.method public add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 1345
    iget-object v0, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public arraykey(I)I
    .registers 2

    .line 0
    const/4 p1, -0x1

    return p1
.end method

.method public find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public first()Lvm2/LuaTable$StrongSlot;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyeq(Lvm2/LuaValue;)Z
    .registers 3

    .line 1320
    invoke-direct {p0}, Lvm2/LuaTable$DeadSlot;->key()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1321
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public keyindex(I)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public relink(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 2

    .line 0
    return-object p1
.end method

.method public remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 1349
    invoke-direct {p0}, Lvm2/LuaTable$DeadSlot;->key()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1350
    iget-object v0, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    return-object p0

    .line 1353
    :cond_f
    iget-object p1, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    return-object p1
.end method

.method public rest()Lvm2/LuaTable$Slot;
    .registers 2

    .line 1325
    iget-object v0, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 4

    .line 1333
    iget-object v0, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lvm2/LuaTable$Slot;->set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 1334
    :goto_a
    invoke-direct {p0}, Lvm2/LuaTable$DeadSlot;->key()Lvm2/LuaValue;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 1337
    iput-object p1, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    return-object p0

    :cond_13
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1362
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1363
    const-string v1, "<dead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    invoke-direct {p0}, Lvm2/LuaTable$DeadSlot;->key()Lvm2/LuaValue;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1366
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1367
    invoke-virtual {v1}, Lvm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    const/16 v1, 0x3e

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1370
    iget-object v1, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    if-eqz v1, :cond_33

    .line 1371
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1372
    iget-object v1, p0, Lvm2/LuaTable$DeadSlot;->next:Lvm2/LuaTable$Slot;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1374
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.LuaTable.Entry (vm2.LuaTable$Entry)
.class abstract Lvm2/LuaTable$Entry;
.super Lvm2/Varargs;
.source "LuaTable.java"

# interfaces
.implements Lvm2/LuaTable$StrongSlot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Entry"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1107
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 1166
    new-instance v0, Lvm2/LuaTable$LinkSlot;

    invoke-direct {v0, p0, p1}, Lvm2/LuaTable$LinkSlot;-><init>(Lvm2/LuaTable$Entry;Lvm2/LuaTable$Slot;)V

    return-object v0
.end method

.method public arg(I)Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 1123
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1121
    :cond_9
    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->value()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 1120
    :cond_e
    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->key()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 2

    .line 1138
    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->key()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public arraykey(I)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;
    .registers 2

    .line 1158
    invoke-virtual {p0, p1}, Lvm2/LuaTable$Entry;->keyeq(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public first()Lvm2/LuaTable$StrongSlot;
    .registers 1

    .line 0
    return-object p0
.end method

.method public abstract key()Lvm2/LuaValue;
.end method

.method public abstract keyeq(Lvm2/LuaValue;)Z
.end method

.method public abstract keyindex(I)I
.end method

.method public narg()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public relink(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 3

    if-eqz p1, :cond_8

    .line 1174
    new-instance v0, Lvm2/LuaTable$LinkSlot;

    invoke-direct {v0, p0, p1}, Lvm2/LuaTable$LinkSlot;-><init>(Lvm2/LuaTable$Entry;Lvm2/LuaTable$Slot;)V

    return-object v0

    :cond_8
    return-object p0
.end method

.method public remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;
    .registers 4

    .line 1170
    new-instance p1, Lvm2/LuaTable$DeadSlot;

    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->key()Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lvm2/LuaTable$DeadSlot;-><init>(Lvm2/LuaValue;Lvm2/LuaTable$Slot;Lvm2/LuaTable$1;)V

    return-object p1
.end method

.method public rest()Lvm2/LuaTable$Slot;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract set(Lvm2/LuaValue;)Lvm2/LuaTable$Entry;
.end method

.method public set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 1162
    invoke-virtual {p0, p2}, Lvm2/LuaTable$Entry;->set(Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 1146
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 1144
    :cond_9
    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->value()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_e
    return-object p0
.end method

.method public toVarargs()Lvm2/Varargs;
    .registers 3

    .line 1134
    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->key()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p0}, Lvm2/LuaTable$Entry;->value()Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public abstract value()Lvm2/LuaValue;
.end method

###### Class vm2.LuaTable.IntKeyEntry (vm2.LuaTable$IntKeyEntry)
.class Lvm2/LuaTable$IntKeyEntry;
.super Lvm2/LuaTable$Entry;
.source "LuaTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntKeyEntry"
.end annotation


# instance fields
.field private final key:I

.field private value:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(ILvm2/LuaValue;)V
    .registers 3

    .line 1217
    invoke-direct {p0}, Lvm2/LuaTable$Entry;-><init>()V

    .line 1218
    iput p1, p0, Lvm2/LuaTable$IntKeyEntry;->key:I

    .line 1219
    iput-object p2, p0, Lvm2/LuaTable$IntKeyEntry;->value:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public arraykey(I)I
    .registers 4

    .line 1227
    iget v0, p0, Lvm2/LuaTable$IntKeyEntry;->key:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    if-gt v0, p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public key()Lvm2/LuaValue;
    .registers 2

    .line 1223
    iget v0, p0, Lvm2/LuaTable$IntKeyEntry;->key:I

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public keyeq(Lvm2/LuaValue;)Z
    .registers 3

    .line 1244
    iget v0, p0, Lvm2/LuaTable$IntKeyEntry;->key:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(I)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .registers 3

    .line 1240
    iget v0, p0, Lvm2/LuaTable$IntKeyEntry;->key:I

    invoke-static {v0}, Lvm2/LuaInteger;->hashCode(I)I

    move-result v0

    invoke-static {v0, p1}, Lvm2/LuaTable;->hashmod(II)I

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;)Lvm2/LuaTable$Entry;
    .registers 2

    .line 1235
    iput-object p1, p0, Lvm2/LuaTable$IntKeyEntry;->value:Lvm2/LuaValue;

    return-object p0
.end method

.method public value()Lvm2/LuaValue;
    .registers 2

    .line 1231
    iget-object v0, p0, Lvm2/LuaTable$IntKeyEntry;->value:Lvm2/LuaValue;

    return-object v0
.end method

###### Class vm2.LuaTable.LinkSlot (vm2.LuaTable$LinkSlot)
.class Lvm2/LuaTable$LinkSlot;
.super Ljava/lang/Object;
.source "LuaTable.java"

# interfaces
.implements Lvm2/LuaTable$StrongSlot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkSlot"
.end annotation


# instance fields
.field private entry:Lvm2/LuaTable$Entry;

.field private next:Lvm2/LuaTable$Slot;


# direct methods
.method public constructor <init>(Lvm2/LuaTable$Entry;Lvm2/LuaTable$Slot;)V
    .registers 3

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    .line 1019
    iput-object p2, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    return-void
.end method

.method private setnext(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 2

    if-eqz p1, :cond_5

    .line 1088
    iput-object p1, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    return-object p0

    .line 1091
    :cond_5
    iget-object p1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    return-object p1
.end method


# virtual methods
.method public add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 1068
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    invoke-direct {p0, p1}, Lvm2/LuaTable$LinkSlot;->setnext(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public arraykey(I)I
    .registers 3

    .line 1055
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lvm2/LuaTable$Entry;->arraykey(I)I

    move-result p1

    return p1
.end method

.method public find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;
    .registers 3

    .line 1043
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lvm2/LuaTable$Entry;->keyeq(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public first()Lvm2/LuaTable$StrongSlot;
    .registers 2

    .line 1039
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    return-object v0
.end method

.method public key()Lvm2/LuaValue;
    .registers 2

    .line 1023
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0}, Lvm2/LuaTable$Entry;->key()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public keyeq(Lvm2/LuaValue;)Z
    .registers 3

    .line 1047
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lvm2/LuaTable$Entry;->keyeq(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .registers 3

    .line 1027
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lvm2/LuaTable$Entry;->keyindex(I)I

    move-result p1

    return p1
.end method

.method public relink(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 4

    if-eqz p1, :cond_a

    .line 1082
    new-instance v0, Lvm2/LuaTable$LinkSlot;

    iget-object v1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-direct {v0, v1, p1}, Lvm2/LuaTable$LinkSlot;-><init>(Lvm2/LuaTable$Entry;Lvm2/LuaTable$Slot;)V

    return-object v0

    :cond_a
    iget-object p1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    return-object p1
.end method

.method public remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;
    .registers 5

    if-ne p0, p1, :cond_f

    .line 1073
    new-instance p1, Lvm2/LuaTable$DeadSlot;

    invoke-virtual {p0}, Lvm2/LuaTable$LinkSlot;->key()Lvm2/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lvm2/LuaTable$DeadSlot;-><init>(Lvm2/LuaValue;Lvm2/LuaTable$Slot;Lvm2/LuaTable$1;)V

    return-object p1

    .line 1075
    :cond_f
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    return-object p0
.end method

.method public rest()Lvm2/LuaTable$Slot;
    .registers 2

    .line 1051
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 4

    if-ne p1, p0, :cond_b

    .line 1060
    iget-object p1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {p1, p2}, Lvm2/LuaTable$Entry;->set(Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object p1

    iput-object p1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    return-object p0

    .line 1063
    :cond_b
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lvm2/LuaTable$Slot;->set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p1

    invoke-direct {p0, p1}, Lvm2/LuaTable$LinkSlot;->setnext(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/LuaTable$LinkSlot;->next:Lvm2/LuaTable$Slot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVarargs()Lvm2/Varargs;
    .registers 2

    .line 1035
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0}, Lvm2/LuaTable$Entry;->toVarargs()Lvm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public value()Lvm2/LuaValue;
    .registers 2

    .line 1031
    iget-object v0, p0, Lvm2/LuaTable$LinkSlot;->entry:Lvm2/LuaTable$Entry;

    invoke-virtual {v0}, Lvm2/LuaTable$Entry;->value()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.LuaTable.NormalEntry (vm2.LuaTable$NormalEntry)
.class Lvm2/LuaTable$NormalEntry;
.super Lvm2/LuaTable$Entry;
.source "LuaTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalEntry"
.end annotation


# instance fields
.field private final key:Lvm2/LuaValue;

.field private value:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 3

    .line 1182
    invoke-direct {p0}, Lvm2/LuaTable$Entry;-><init>()V

    .line 1183
    iput-object p1, p0, Lvm2/LuaTable$NormalEntry;->key:Lvm2/LuaValue;

    .line 1184
    iput-object p2, p0, Lvm2/LuaTable$NormalEntry;->value:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public key()Lvm2/LuaValue;
    .registers 2

    .line 1188
    iget-object v0, p0, Lvm2/LuaTable$NormalEntry;->key:Lvm2/LuaValue;

    return-object v0
.end method

.method public keyeq(Lvm2/LuaValue;)Z
    .registers 3

    .line 1209
    iget-object v0, p0, Lvm2/LuaTable$NormalEntry;->key:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .registers 3

    .line 1205
    iget-object v0, p0, Lvm2/LuaTable$NormalEntry;->key:Lvm2/LuaValue;

    invoke-static {v0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;I)I

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;)Lvm2/LuaTable$Entry;
    .registers 2

    .line 1196
    iput-object p1, p0, Lvm2/LuaTable$NormalEntry;->value:Lvm2/LuaValue;

    return-object p0
.end method

.method public toVarargs()Lvm2/Varargs;
    .registers 1

    .line 0
    return-object p0
.end method

.method public value()Lvm2/LuaValue;
    .registers 2

    .line 1192
    iget-object v0, p0, Lvm2/LuaTable$NormalEntry;->value:Lvm2/LuaValue;

    return-object v0
.end method

###### Class vm2.LuaTable.NumberValueEntry (vm2.LuaTable$NumberValueEntry)
.class Lvm2/LuaTable$NumberValueEntry;
.super Lvm2/LuaTable$Entry;
.source "LuaTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberValueEntry"
.end annotation


# instance fields
.field private final key:Lvm2/LuaValue;

.field private value:D


# direct methods
.method public constructor <init>(Lvm2/LuaValue;D)V
    .registers 4

    .line 1255
    invoke-direct {p0}, Lvm2/LuaTable$Entry;-><init>()V

    .line 1256
    iput-object p1, p0, Lvm2/LuaTable$NumberValueEntry;->key:Lvm2/LuaValue;

    .line 1257
    iput-wide p2, p0, Lvm2/LuaTable$NumberValueEntry;->value:D

    return-void
.end method


# virtual methods
.method public key()Lvm2/LuaValue;
    .registers 2

    .line 1261
    iget-object v0, p0, Lvm2/LuaTable$NumberValueEntry;->key:Lvm2/LuaValue;

    return-object v0
.end method

.method public keyeq(Lvm2/LuaValue;)Z
    .registers 3

    .line 1284
    iget-object v0, p0, Lvm2/LuaTable$NumberValueEntry;->key:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .registers 3

    .line 1280
    iget-object v0, p0, Lvm2/LuaTable$NumberValueEntry;->key:Lvm2/LuaValue;

    invoke-static {v0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;I)I

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;)Lvm2/LuaTable$Entry;
    .registers 4

    .line 1269
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 1270
    invoke-virtual {p1}, Lvm2/LuaValue;->tonumber()Lvm2/LuaValue;

    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1272
    invoke-virtual {v0}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    iput-wide v0, p0, Lvm2/LuaTable$NumberValueEntry;->value:D

    return-object p0

    .line 1276
    :cond_18
    new-instance v0, Lvm2/LuaTable$NormalEntry;

    iget-object v1, p0, Lvm2/LuaTable$NumberValueEntry;->key:Lvm2/LuaValue;

    invoke-direct {v0, v1, p1}, Lvm2/LuaTable$NormalEntry;-><init>(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-object v0
.end method

.method public value()Lvm2/LuaValue;
    .registers 3

    .line 1265
    iget-wide v0, p0, Lvm2/LuaTable$NumberValueEntry;->value:D

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.LuaTable.Slot (vm2.LuaTable$Slot)
.class interface abstract Lvm2/LuaTable$Slot;
.super Ljava/lang/Object;
.source "LuaTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Slot"
.end annotation


# virtual methods
.method public abstract add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
.end method

.method public abstract arraykey(I)I
.end method

.method public abstract find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;
.end method

.method public abstract first()Lvm2/LuaTable$StrongSlot;
.end method

.method public abstract keyeq(Lvm2/LuaValue;)Z
.end method

.method public abstract keyindex(I)I
.end method

.method public abstract relink(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
.end method

.method public abstract remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;
.end method

.method public abstract rest()Lvm2/LuaTable$Slot;
.end method

.method public abstract set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
.end method

###### Class vm2.LuaTable.StrongSlot (vm2.LuaTable$StrongSlot)
.class interface abstract Lvm2/LuaTable$StrongSlot;
.super Ljava/lang/Object;
.source "LuaTable.java"

# interfaces
.implements Lvm2/LuaTable$Slot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StrongSlot"
.end annotation


# virtual methods
.method public abstract key()Lvm2/LuaValue;
.end method

.method public abstract toVarargs()Lvm2/Varargs;
.end method

.method public abstract value()Lvm2/LuaValue;
.end method
