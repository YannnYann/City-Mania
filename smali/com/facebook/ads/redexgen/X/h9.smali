###### Class com.facebook.ads.redexgen.X.C2538h9 (com.facebook.ads.redexgen.X.h9)
.class public Lcom/facebook/ads/redexgen/X/h9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:I

.field public static A05:[Ljava/lang/Object;

.field public static A06:[Ljava/lang/Object;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[I

.field public A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2552
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BrVHgBkmBksyBnnjIq0pHnqXAu9AUg3j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iIth6RrlZFIJsCIcgsKekGbs32ChyRjv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Uwdt1z4SmD1Mf7UvGeSYdNXOfhFYTYnY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QITUqyWPG2VnlGrB2a6hYhF3R3KaavLD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "arDW8RiIBmWFNCZvgTvY8WvuJ76u3VTs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pOGA2rk9V0ZEl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "438Cia9wbNYnLnXWpHR8BTCUnyjltaF2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "slnYcYZFDBEgJMtczrpzy3D6NQdPiCOq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/h9;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 92577
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92578
    sget-object v0, Lcom/facebook/ads/redexgen/X/gz;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92579
    sget-object v0, Lcom/facebook/ads/redexgen/X/gz;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92580
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92581
    return-void
.end method

.method private final A01()I
    .registers 8

    .line 92582
    .local v6, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92583
    .local v0, "N":I
    if-nez v4, :cond_6

    .line 92584
    const/4 v0, -0x1

    return v0

    .line 92585
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    const/4 v0, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/h9;->A03([III)I

    move-result v6

    .line 92586
    .local v1, "index":I
    if-gez v6, :cond_10

    .line 92587
    return v6

    .line 92588
    :cond_10
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_19

    .line 92589
    return v6

    .line 92590
    :cond_19
    add-int/lit8 v3, v6, 0x1

    .local v2, "end":I
    :goto_1b
    if-ge v3, v4, :cond_50

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    aget v0, v0, v3

    if-nez v0, :cond_50

    .line 92591
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "5BliZlAS3QBBz9o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v5, v0

    if-nez v0, :cond_4d

    return v3

    .line 92592
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 92593
    :cond_50
    add-int/lit8 v2, v6, -0x1

    .local v3, "i":I
    :goto_52
    if-ltz v2, :cond_66

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    aget v0, v0, v2

    if-nez v0, :cond_66

    .line 92594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_63

    return v2

    .line 92595
    :cond_63
    add-int/lit8 v2, v2, -0x1

    goto :goto_52

    .line 92596
    .end local v3    # "i":I
    :cond_66
    not-int v0, v3

    return v0
.end method

.method private final A02(Ljava/lang/Object;I)I
    .registers 8

    .line 92597
    .local p1, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92598
    .local v0, "N":I
    if-nez v4, :cond_21

    .line 92599
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "y399iLZYsEEz0hzdxnUhzykHYZJwaaUE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 92600
    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    invoke-static {v0, v4, p2}, Lcom/facebook/ads/redexgen/X/h9;->A03([III)I

    move-result v2

    .line 92601
    .local v1, "index":I
    if-gez v2, :cond_2a

    .line 92602
    return v2

    .line 92603
    :cond_2a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 92604
    return v2

    .line 92605
    :cond_37
    add-int/lit8 v3, v2, 0x1

    .local v2, "end":I
    :goto_39
    if-ge v3, v4, :cond_51

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    aget v0, v0, v3

    if-ne v0, p2, :cond_51

    .line 92606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    return v3

    .line 92607
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 92608
    :cond_51
    add-int/lit8 v2, v2, -0x1

    .local v3, "i":I
    :goto_53
    if-ltz v2, :cond_6b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_6b

    .line 92609
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    return v2

    .line 92610
    :cond_68
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    .line 92611
    .end local v3    # "i":I
    :cond_6b
    not-int v0, v3

    return v0
.end method

.method public static A03([III)I
    .registers 3

    .line 92612
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gz;->A02([III)I

    move-result p0

    return p0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_5

    .line 92613
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .registers 4

    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "Xtbm9MFCOkvOfDux5Me3XhO5K6Bs7EUd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PZcI0QBOeZ0LYFf6gJzuFWLZdUoY6utj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/ads/redexgen/X/h9;->A07:[B

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2a
    .array-data 1
        -0x45t
        0x7t
        -0x5t
        -0x4t
        0x6t
        -0x4dt
        -0x20t
        -0xct
        0x3t
        -0x44t
        -0x3et
        -0x4at
        0x3t
        0x5t
    .end array-data
.end method

.method private A06(I)V
    .registers 8

    .line 92614
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v0, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2e

    .line 92615
    const-class v2, Lcom/facebook/ads/redexgen/X/JR;

    monitor-enter v2

    .line 92616
    :try_start_a
    sget-object v0, Lcom/facebook/ads/redexgen/X/h9;->A06:[Ljava/lang/Object;

    if-eqz v0, :cond_29

    .line 92617
    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A06:[Ljava/lang/Object;

    .line 92618
    .local v4, "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92619
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/h9;->A06:[Ljava/lang/Object;

    .line 92620
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92621
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 92622
    sget v0, Lcom/facebook/ads/redexgen/X/h9;->A04:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/h9;->A04:I

    .line 92623
    monitor-exit v2

    return-void

    .line 92624
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_29
    monitor-exit v2

    goto :goto_58

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v0

    .line 92625
    :cond_2e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_58

    .line 92626
    const-class v2, Lcom/facebook/ads/redexgen/X/JR;

    monitor-enter v2

    .line 92627
    :try_start_34
    sget-object v0, Lcom/facebook/ads/redexgen/X/h9;->A05:[Ljava/lang/Object;

    if-eqz v0, :cond_53

    .line 92628
    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A05:[Ljava/lang/Object;

    .line 92629
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92630
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/h9;->A05:[Ljava/lang/Object;

    .line 92631
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92632
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 92633
    sget v0, Lcom/facebook/ads/redexgen/X/h9;->A03:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/h9;->A03:I

    .line 92634
    monitor-exit v2

    return-void

    .line 92635
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_53
    monitor-exit v2

    goto :goto_58

    :catchall_55
    move-exception v0

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_55

    throw v0

    .line 92636
    :cond_58
    :goto_58
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92637
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92638
    return-void
.end method

.method public static A07([I[Ljava/lang/Object;I)V
    .registers 10

    .line 92639
    array-length v1, p0

    const/16 v0, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2e

    .line 92640
    const-class v1, Lcom/facebook/ads/redexgen/X/JR;

    monitor-enter v1

    .line 92641
    :try_start_e
    sget v0, Lcom/facebook/ads/redexgen/X/h9;->A04:I

    if-ge v0, v3, :cond_29

    .line 92642
    sget-object v0, Lcom/facebook/ads/redexgen/X/h9;->A06:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 92643
    aput-object p0, p1, v2

    .line 92644
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .local v1, "i":I
    :goto_1b
    if-lt v0, v4, :cond_22

    .line 92645
    aput-object v6, p1, v0

    .line 92646
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 92647
    .end local v1    # "i":I
    :cond_22
    sput-object p1, Lcom/facebook/ads/redexgen/X/h9;->A06:[Ljava/lang/Object;

    .line 92648
    sget v0, Lcom/facebook/ads/redexgen/X/h9;->A04:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/h9;->A04:I

    .line 92649
    :cond_29
    monitor-exit v1

    goto :goto_55

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw v0

    .line 92650
    :cond_2e
    array-length v1, p0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_55

    .line 92651
    const-class v1, Lcom/facebook/ads/redexgen/X/JR;

    monitor-enter v1

    .line 92652
    :try_start_35
    sget v0, Lcom/facebook/ads/redexgen/X/h9;->A03:I

    if-ge v0, v3, :cond_50

    .line 92653
    sget-object v0, Lcom/facebook/ads/redexgen/X/h9;->A05:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 92654
    aput-object p0, p1, v2

    .line 92655
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .restart local v1    # "i":I
    :goto_42
    if-lt v0, v4, :cond_49

    .line 92656
    aput-object v6, p1, v0

    .line 92657
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 92658
    .end local v1    # "i":I
    :cond_49
    sput-object p1, Lcom/facebook/ads/redexgen/X/h9;->A05:[Ljava/lang/Object;

    .line 92659
    sget v0, Lcom/facebook/ads/redexgen/X/h9;->A03:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/h9;->A03:I

    .line 92660
    :cond_50
    monitor-exit v1

    goto :goto_55

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw v0

    .line 92661
    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public final A08(Ljava/lang/Object;)I
    .registers 6

    .line 92662
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    mul-int/lit8 v3, v0, 0x2

    .line 92663
    .local v0, "N":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92664
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_15

    .line 92665
    const/4 v1, 0x1

    .local v2, "i":I
    :goto_9
    if-ge v1, v3, :cond_26

    .line 92666
    aget-object v0, v2, v1

    if-nez v0, :cond_12

    .line 92667
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 92668
    :cond_12
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 92669
    :cond_15
    const/4 v1, 0x1

    .restart local v2    # "i":I
    :goto_16
    if-ge v1, v3, :cond_26

    .line 92670
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 92671
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 92672
    :cond_23
    add-int/lit8 v1, v1, 0x2

    goto :goto_16

    .line 92673
    .end local v2    # "i":I
    :cond_26
    const/4 v0, -0x1

    return v0
.end method

.method public final A09(Ljava/lang/Object;)I
    .registers 3

    .line 92674
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/h9;->A01()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/h9;->A02(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method public final A0A(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 92675
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0B(I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 92676
    .local p2, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    const/4 v5, 0x1

    add-int/2addr v0, v5

    aget-object v8, v1, v0

    .line 92677
    .local v0, "old":Ljava/lang/Object;
    iget v4, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92678
    .local v1, "osize":I
    if-gt v4, v5, :cond_43

    .line 92679
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/h9;->A07([I[Ljava/lang/Object;I)V

    .line 92680
    sget-object v0, Lcom/facebook/ads/redexgen/X/gz;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92681
    sget-object v0, Lcom/facebook/ads/redexgen/X/gz;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92682
    const/4 v3, 0x0

    .line 92683
    .local v2, "nsize":I
    .end local v3
    .restart local v2    # "nsize":I
    :cond_1c
    :goto_1c
    iget v5, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_df

    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "xFHRCOjHDqSI1UlNRZSx5FadcPcGQITj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4ZMke5GLOi53P3lo3UgzHK3l5Qzb3367"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_d9

    .line 92684
    iput v3, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92685
    return-object v8

    .line 92686
    .end local v2    # "nsize":I
    :cond_43
    add-int/lit8 v3, v4, -0x1

    .line 92687
    .local v3, "nsize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_8f

    iget v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_8f

    .line 92688
    if-le v4, v2, :cond_5b

    shr-int/lit8 v0, v4, 0x1

    add-int v2, v4, v0

    .line 92689
    .local v4, "n":I
    :cond_5b
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92690
    .local v5, "ohashes":[I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92691
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/h9;->A06(I)V

    .line 92692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ne v4, v0, :cond_e5

    .line 92693
    if-lez p1, :cond_75

    .line 92694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    const/4 v2, 0x0

    invoke-static {v6, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92696
    :cond_75
    if-ge p1, v3, :cond_1c

    .line 92697
    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    sub-int v0, v3, p1

    invoke-static {v6, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92698
    add-int/lit8 v6, p1, 0x1

    shl-int/2addr v6, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v3, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v7, v6, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    .line 92699
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_8f
    if-ge p1, v3, :cond_ab

    .line 92700
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    sub-int v0, v3, p1

    invoke-static {v6, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92701
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    shl-int/2addr v6, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v3, p1

    shl-int/2addr v0, v5

    invoke-static {v7, v6, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92702
    :cond_ab
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    const/4 v6, 0x0

    aput-object v6, v1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_c9

    .line 92703
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v5

    aput-object v6, v1, v0

    goto/16 :goto_1c

    :cond_c9
    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "0xLePTZxplzExTmCw9shJwlSbcl2kqEb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v5

    aput-object v6, v1, v0

    goto/16 :goto_1c

    .line 92704
    :cond_d9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_df
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92705
    .restart local v4    # "n":I
    .restart local v5    # "ohashes":[I
    .restart local v6    # "oarray":[Ljava/lang/Object;
    :cond_e5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final A0C(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 92706
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0D(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 92707
    .local v2, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 92708
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/h9;
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 92709
    .local p0, "old":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 92710
    return-object v1
.end method

.method public final A0E(I)V
    .registers 8

    .line 92711
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v5, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92712
    .local v0, "osize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v0

    if-ge v0, p1, :cond_22

    .line 92713
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92714
    .local v1, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92715
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/h9;->A06(I)V

    .line 92716
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-lez v0, :cond_1f

    .line 92717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92718
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92719
    :cond_1f
    invoke-static {v4, v3, v5}, Lcom/facebook/ads/redexgen/X/h9;->A07([I[Ljava/lang/Object;I)V

    .line 92720
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_22
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ne v0, v5, :cond_27

    .line 92721
    return-void

    .line 92722
    :cond_27
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .registers 5

    .line 92723
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-lez v0, :cond_18

    .line 92724
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92725
    .local v0, "ohashes":[I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92726
    .local v1, "oarray":[Ljava/lang/Object;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92727
    .local v2, "osize":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/gz;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92728
    sget-object v0, Lcom/facebook/ads/redexgen/X/gz;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92729
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92730
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/h9;->A07([I[Ljava/lang/Object;I)V

    .line 92731
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_18
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-gtz v0, :cond_1d

    .line 92732
    return-void

    .line 92733
    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 92734
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/h9;->A09(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 92735
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/h9;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 92736
    .local p2, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    .line 92737
    return v5

    .line 92738
    :cond_4
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/h9;

    const/4 v4, 0x0

    if-eqz v0, :cond_41

    .line 92739
    check-cast p1, Lcom/facebook/ads/redexgen/X/h9;

    .line 92740
    .local v1, "map":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/h9;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/h9;->size()I

    move-result v0

    if-eq v1, v0, :cond_16

    .line 92741
    return v4

    .line 92742
    :cond_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    :try_start_17
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ge v3, v0, :cond_3e

    .line 92743
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/h9;->A0A(I)Ljava/lang/Object;

    move-result-object v2

    .line 92744
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/h9;->A0C(I)Ljava/lang/Object;

    move-result-object v1

    .line 92745
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/h9;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92746
    .local p0, "theirs":Ljava/lang/Object;
    if-nez v1, :cond_32

    .line 92747
    if-nez v0, :cond_3c

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/h9;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3c

    .line 92748
    :cond_32
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3d

    .line 92749
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local p0    # "theirs":Ljava/lang/Object;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 92750
    :cond_3c
    :goto_3c
    return v4

    .line 92751
    :goto_3d
    return v4

    .line 92752
    .end local v3    # "i":I
    :cond_3e
    return v5
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_3f} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_3f} :catch_3f

    .line 92753
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_3f
    return v4

    .line 92754
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_40
    return v4

    .line 92755
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    :cond_41
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7d

    .line 92756
    check-cast p1, Ljava/util/Map;

    .line 92757
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/h9;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_52

    .line 92758
    return v4

    .line 92759
    :cond_52
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_53
    :try_start_53
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ge v3, v0, :cond_7a

    .line 92760
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/h9;->A0A(I)Ljava/lang/Object;

    move-result-object v2

    .line 92761
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/h9;->A0C(I)Ljava/lang/Object;

    move-result-object v1

    .line 92762
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92763
    .restart local p0    # "theirs":Ljava/lang/Object;
    if-nez v1, :cond_6e

    .line 92764
    if-nez v0, :cond_78

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_78

    .line 92765
    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_79

    .line 92766
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local p0    # "theirs":Ljava/lang/Object;
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 92767
    :cond_78
    :goto_78
    return v4

    .line 92768
    :goto_79
    return v4

    .line 92769
    .end local v3    # "i":I
    :cond_7a
    return v5
    :try_end_7b
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_7b} :catch_7b

    .line 92770
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_7b
    return v4

    .line 92771
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_7c
    return v4

    .line 92772
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_7d
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 92773
    .local p1, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/h9;->A09(Ljava/lang/Object;)I

    move-result v0

    .line 92774
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final hashCode()I
    .registers 9

    .line 92775
    .local p1, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92776
    .local v0, "hashes":[I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92777
    .local v1, "array":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 92778
    .local v2, "result":I
    const/4 v4, 0x0

    .local v3, "i":I
    const/4 v3, 0x1

    .local v4, "v":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .local v5, "s":I
    :goto_9
    if-ge v4, v2, :cond_1e

    .line 92779
    aget-object v0, v6, v3

    .line 92780
    .local v6, "value":Ljava/lang/Object;
    aget v1, v7, v4

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_12
    xor-int/2addr v1, v0

    add-int/2addr v5, v1

    .line 92781
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    .line 92782
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_12

    .line 92783
    .end local v3    # "i":I
    .end local v4    # "v":I
    .end local v5    # "s":I
    :cond_1e
    return v5
.end method

.method public final isEmpty()Z
    .registers 2

    .line 92784
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 92785
    .local p1, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v7, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92786
    .local v0, "osize":I
    if-nez p1, :cond_18

    .line 92787
    const/4 v5, 0x0

    .line 92788
    .local v1, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/h9;->A01()I

    move-result v0

    .line 92789
    .local v2, "index":I
    .restart local v2    # "index":I
    :goto_9
    if-ltz v0, :cond_21

    .line 92790
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 92791
    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 92792
    .local v2, "old":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 92793
    return-object v1

    .line 92794
    .end local v1    # "hash":I
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 92795
    .restart local v1    # "hash":I
    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/h9;->A02(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_9

    .line 92796
    .end local v3    # "index":I
    .local v2, "index":I
    :cond_21
    not-int v2, v0

    .line 92797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v0

    if-lt v7, v0, :cond_4e

    .line 92798
    const/16 v1, 0x8

    if-lt v7, v1, :cond_90

    shr-int/lit8 v1, v7, 0x1

    add-int/2addr v1, v7

    .line 92799
    .local v3, "n":I
    :goto_2e
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    .line 92800
    .local v4, "ohashes":[I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    .line 92801
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/h9;->A06(I)V

    .line 92802
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ne v7, v0, :cond_9c

    .line 92803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v0

    if-lez v0, :cond_4b

    .line 92804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v6

    const/4 v3, 0x0

    invoke-static {v6, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    array-length v0, v4

    invoke-static {v4, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92806
    :cond_4b
    invoke-static {v6, v4, v7}, Lcom/facebook/ads/redexgen/X/h9;->A07([I[Ljava/lang/Object;I)V

    .line 92807
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_4e
    if-ge v2, v7, :cond_6d

    .line 92808
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    add-int/lit8 v1, v2, 0x1

    sub-int v0, v7, v2

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92809
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    shl-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    sub-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v6, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92810
    :cond_6d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ne v7, v0, :cond_96

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    array-length v0, v0

    if-ge v2, v0, :cond_96

    .line 92811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A01:[I

    aput v5, v0, v2

    .line 92812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aput-object p1, v1, v0

    .line 92813
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h9;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    .line 92814
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    .line 92815
    const/4 v0, 0x0

    return-object v0

    .line 92816
    :cond_90
    const/4 v0, 0x4

    if-lt v7, v0, :cond_94

    goto :goto_2e

    :cond_94
    const/4 v1, 0x4

    goto :goto_2e

    .line 92817
    :cond_96
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 92818
    :cond_9c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 92819
    .local v2, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/h9;->A09(Ljava/lang/Object;)I

    move-result v0

    .line 92820
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 92821
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/h9;->A0B(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 92822
    :cond_b
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "POG7nMkVNzdGaGlGxNMu0E80q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final size()I
    .registers 2

    .line 92823
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 92824
    .local v5, "this":Lcom/facebook/ads/redexgen/X/h9;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/h9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92825
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/h9;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92826
    :cond_10
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92827
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92828
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_1f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/h9;->A00:I

    if-ge v5, v0, :cond_7b

    .line 92829
    if-lez v5, :cond_31

    .line 92830
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/h9;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92831
    :cond_31
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/h9;->A0A(I)Ljava/lang/Object;

    move-result-object v7

    .line 92832
    .local v2, "key":Ljava/lang/Object;
    const/4 v8, 0x0

    const/16 v6, 0xa

    const/16 v3, 0x2a

    sget-object v1, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_75

    sget-object v2, Lcom/facebook/ads/redexgen/X/h9;->A08:[Ljava/lang/String;

    const-string v1, "5MoFeGsxqoTSR8Y6IShdOiE5VevAoRo0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kGPruxXsJMcA49LPD5OztVvQJS4oto1Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v8, v6, v3}, Lcom/facebook/ads/redexgen/X/h9;->A04(III)Ljava/lang/String;

    move-result-object v0

    if-eq v7, p0, :cond_71

    .line 92833
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92834
    :goto_5c
    const/16 v1, 0x3d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92835
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/h9;->A0C(I)Ljava/lang/Object;

    move-result-object v1

    .line 92836
    .local v4, "value":Ljava/lang/Object;
    if-eq v1, p0, :cond_6d

    .line 92837
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92838
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 92839
    :cond_6d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 92840
    :cond_71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92841
    .end local v1    # "i":I
    :cond_7b
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92842
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
