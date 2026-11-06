###### Class com.facebook.ads.redexgen.X.JB (com.facebook.ads.redexgen.X.JB)
.class public final Lcom/facebook/ads/redexgen/X/JB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ie;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/iG;,
        Lcom/facebook/ads/redexgen/X/iH;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/h7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/h7<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/iG;

.field public final A03:Lcom/facebook/ads/redexgen/X/if;

.field public final A04:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 757
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X1JWoRd1RTsi5LXg3YfkE890Z0SkAp6s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8cHG76lMVFwKxBGRg2kgut24eHhxfbd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G9TzZa55JFGh4eGgvGtqHGY1m3qrW6LM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T7A4lgHZzGr7V1uQcw7LfDSO4lerGRH7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wT7nveBXif1G6UL4LkiEJi9kfhK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XR1Jqmc9zxsTs7lfyBsyi3NvUHLKhP3K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pVA6ZWYUVwE4UScIoRBBosOqE3FsfWwK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nWmw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JB;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iG;)V
    .registers 3

    .line 48794
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/JB;-><init>(Lcom/facebook/ads/redexgen/X/iG;Z)V

    .line 48795
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iG;Z)V
    .registers 5

    .line 48796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48797
    const/16 v1, 0x1e

    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/JP;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A01:Lcom/facebook/ads/redexgen/X/h7;

    .line 48798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    .line 48799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    .line 48800
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    .line 48801
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    .line 48802
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/JB;->A07:Z

    .line 48803
    new-instance v0, Lcom/facebook/ads/redexgen/X/if;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/if;-><init>(Lcom/facebook/ads/redexgen/X/ie;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A03:Lcom/facebook/ads/redexgen/X/if;

    .line 48804
    return-void
.end method

.method private A00(II)I
    .registers 9

    .line 48805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48806
    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/16 v4, 0x8

    const/4 v1, 0x1

    if-ltz v3, :cond_b2

    .line 48807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/iH;

    .line 48808
    .local v4, "postponed":Lcom/facebook/ads/redexgen/X/iH;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/4 v5, 0x2

    if-ne v0, v4, :cond_75

    .line 48809
    iget v4, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-ge v4, v0, :cond_70

    .line 48810
    iget v4, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48811
    .local v2, "start":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 48812
    .local v5, "end":I
    .restart local v5    # "end":I
    :goto_24
    if-lt p1, v4, :cond_52

    if-gt p1, v0, :cond_52

    .line 48813
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ne v4, v0, :cond_40

    .line 48814
    if-ne p2, v1, :cond_38

    .line 48815
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 48816
    :cond_33
    :goto_33
    add-int/lit8 p1, p1, 0x1

    .line 48817
    .end local v4    # "postponed":Lcom/facebook/ads/redexgen/X/iH;
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 48818
    :cond_38
    if-ne p2, v5, :cond_33

    .line 48819
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_33

    .line 48820
    :cond_40
    if-ne p2, v1, :cond_4a

    .line 48821
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48822
    :cond_47
    :goto_47
    add-int/lit8 p1, p1, -0x1

    goto :goto_35

    .line 48823
    :cond_4a
    if-ne p2, v5, :cond_47

    .line 48824
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    goto :goto_47

    .line 48825
    :cond_52
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ge p1, v0, :cond_35

    .line 48826
    if-ne p2, v1, :cond_63

    .line 48827
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48828
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_35

    .line 48829
    :cond_63
    if-ne p2, v5, :cond_35

    .line 48830
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48831
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_35

    .line 48832
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_70
    iget v4, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 48833
    .restart local v2    # "start":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    goto :goto_24

    .line 48834
    :cond_75
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v0, p1, :cond_a2

    .line 48835
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    if-ne v0, v1, :cond_9a

    .line 48836
    iget v4, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_91

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_91
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "N0sU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr p1, v4

    goto :goto_35

    .line 48837
    :cond_9a
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    if-ne v0, v5, :cond_35

    .line 48838
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr p1, v0

    goto :goto_35

    .line 48839
    :cond_a2
    if-ne p2, v1, :cond_aa

    .line 48840
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    goto :goto_35

    .line 48841
    :cond_aa
    if-ne p2, v5, :cond_35

    .line 48842
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    goto :goto_35

    .line 48843
    .end local v1    # "i":I
    :cond_b2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .restart local v1    # "i":I
    :goto_b9
    if-ltz v3, :cond_e9

    .line 48844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/iH;

    .line 48845
    .local v3, "op":Lcom/facebook/ads/redexgen/X/iH;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    if-ne v0, v4, :cond_dc

    .line 48846
    iget v1, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-eq v1, v0, :cond_d1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-gez v0, :cond_d9

    .line 48847
    :cond_d1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48848
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48849
    .end local v3    # "op":Lcom/facebook/ads/redexgen/X/iH;
    :cond_d9
    :goto_d9
    add-int/lit8 v3, v3, -0x1

    goto :goto_b9

    .line 48850
    :cond_dc
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-gtz v0, :cond_d9

    .line 48851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48852
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    goto :goto_d9

    .line 48853
    .end local v1    # "i":I
    :cond_e9
    return p1
.end method

.method private final A01(II)I
    .registers 10

    .line 48854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 48855
    .local v0, "count":I
    .local v1, "i":I
    :goto_6
    if-ge p2, v6, :cond_6c

    .line 48856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/iH;

    .line 48857
    .local v2, "op":Lcom/facebook/ads/redexgen/X/iH;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_2c

    .line 48858
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ne v0, p1, :cond_1f

    .line 48859
    iget p1, v5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 48860
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/iH;
    :cond_1c
    :goto_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 48861
    :cond_1f
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ge v0, p1, :cond_25

    .line 48862
    add-int/lit8 p1, p1, -0x1

    .line 48863
    :cond_25
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-gt v0, p1, :cond_1c

    .line 48864
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 48865
    :cond_2c
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v0, p1, :cond_1c

    .line 48866
    iget v1, v5, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_42

    .line 48867
    iget v1, v5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_3e

    .line 48868
    const/4 v0, -0x1

    return v0

    .line 48869
    :cond_3e
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr p1, v0

    goto :goto_1c

    .line 48870
    :cond_42
    iget v4, v5, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5f
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "6d2Cvy1MfGwOem3AHh21iiz4RwVuOhP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1c

    .line 48871
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr p1, v0

    goto :goto_1c

    .line 48872
    .end local v1    # "i":I
    :cond_6c
    return p1
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/JB;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0xa1

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/JB;->A08:[B

    return-void

    :array_a
    .array-data 1
        -0x64t
        -0x4bt
        -0x4et
        -0x4bt
        -0x4at
        -0x42t
        -0x4bt
        0x67t
        -0x44t
        -0x49t
        -0x55t
        -0x58t
        -0x45t
        -0x54t
        0x67t
        -0x4at
        -0x49t
        0x67t
        -0x45t
        -0x40t
        -0x49t
        -0x54t
        0x67t
        -0x53t
        -0x4at
        -0x47t
        0x67t
        -0x2ct
        -0x2dt
        -0x2ft
        -0x22t
        -0x7bt
        -0x29t
        -0x36t
        -0x2et
        -0x2ct
        -0x25t
        -0x36t
        -0x7bt
        -0x3at
        -0x2dt
        -0x37t
        -0x7bt
        -0x26t
        -0x2bt
        -0x37t
        -0x3at
        -0x27t
        -0x36t
        -0x7bt
        -0x2ct
        -0x2bt
        -0x28t
        -0x7bt
        -0x38t
        -0x3at
        -0x2dt
        -0x7bt
        -0x39t
        -0x36t
        -0x7bt
        -0x37t
        -0x32t
        -0x28t
        -0x2bt
        -0x3at
        -0x27t
        -0x38t
        -0x33t
        -0x36t
        -0x37t
        -0x7bt
        -0x32t
        -0x2dt
        -0x7bt
        -0x35t
        -0x32t
        -0x29t
        -0x28t
        -0x27t
        -0x7bt
        -0x2bt
        -0x3at
        -0x28t
        -0x28t
        -0x18t
        -0x17t
        -0x67t
        -0x14t
        -0x1ft
        -0x18t
        -0x12t
        -0x1bt
        -0x23t
        -0x67t
        -0x25t
        -0x22t
        -0x67t
        -0x15t
        -0x22t
        -0x1at
        -0x18t
        -0x11t
        -0x22t
        -0x67t
        -0x18t
        -0x15t
        -0x67t
        -0x12t
        -0x17t
        -0x23t
        -0x26t
        -0x13t
        -0x22t
        -0x59t
        0x1et
        0x13t
        0x1at
        0x20t
        0x17t
        0xft
        -0x35t
        0x19t
        0x1at
        0x1ft
        -0x35t
        0xft
        0x14t
        0x1et
        0x1bt
        0xct
        0x1ft
        0xet
        0x13t
        -0x35t
        0xct
        0xft
        0xft
        -0x35t
        0x1at
        0x1dt
        -0x35t
        0x18t
        0x1at
        0x21t
        0x10t
        -0x35t
        0x11t
        0x1at
        0x1dt
        -0x35t
        0x1bt
        0x1dt
        0x10t
        -0x35t
        0x17t
        0xct
        0x24t
        0x1at
        0x20t
        0x1ft
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 2

    .line 48873
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48874
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 2

    .line 48875
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48876
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 12

    .line 48877
    iget v8, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48878
    .local v0, "tmpStart":I
    const/4 v7, 0x0

    .line 48879
    .local v1, "tmpCount":I
    iget v9, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v9, v0

    .line 48880
    .local v2, "tmpEnd":I
    const/4 v6, -0x1

    .line 48881
    .local v3, "type":I
    iget v5, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .local v4, "position":I
    :goto_b
    const/4 v4, 0x0

    const/4 v3, 0x2

    if-ge v5, v9, :cond_40

    .line 48882
    const/4 v2, 0x0

    .line 48883
    .local v7, "typeChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/iG;->A79(I)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v0

    .line 48884
    .local v8, "vh":Lcom/facebook/ads/redexgen/X/jE;
    const/4 v1, 0x1

    if-nez v0, :cond_1f

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/JB;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 48885
    :cond_1f
    if-nez v6, :cond_29

    .line 48886
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    .line 48887
    .restart local v5
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A08(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48888
    const/4 v2, 0x1

    .line 48889
    .end local v5
    :cond_29
    const/4 v6, 0x1

    .line 48890
    :goto_2a
    if-eqz v2, :cond_31

    .line 48891
    sub-int/2addr v5, v7

    .line 48892
    sub-int/2addr v9, v7

    .line 48893
    const/4 v7, 0x1

    .line 48894
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Lcom/facebook/ads/redexgen/X/jE;
    :goto_2f
    add-int/2addr v5, v1

    goto :goto_b

    .line 48895
    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 48896
    :cond_34
    if-ne v6, v1, :cond_3e

    .line 48897
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    .line 48898
    .local v5, "newOp":Lcom/facebook/ads/redexgen/X/iH;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48899
    const/4 v2, 0x1

    .line 48900
    .end local v5    # "newOp":Lcom/facebook/ads/redexgen/X/iH;
    :cond_3e
    const/4 v6, 0x0

    goto :goto_2a

    .line 48901
    .end local v4    # "position":I
    :cond_40
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-eq v7, v0, :cond_4b

    .line 48902
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48903
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object p1

    .line 48904
    :cond_4b
    if-nez v6, :cond_51

    .line 48905
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->A08(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48906
    :goto_50
    return-void

    .line 48907
    :cond_51
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/iH;)V

    goto :goto_50
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 11

    .line 48908
    iget v7, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48909
    .local v0, "tmpStart":I
    const/4 v6, 0x0

    .line 48910
    .local v1, "tmpCount":I
    iget v5, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v5, v0

    .line 48911
    .local v2, "tmpEnd":I
    const/4 v8, -0x1

    .line 48912
    .local v3, "type":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .local v4, "position":I
    :goto_b
    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "QVMb2fRXyzWHiAZPpRD1aZXDVthvAAWC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v4, v5, :cond_5f

    .line 48913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/iG;->A79(I)Lcom/facebook/ads/redexgen/X/jE;

    move-result-object v0

    .line 48914
    .local v6, "vh":Lcom/facebook/ads/redexgen/X/jE;
    const/4 v1, 0x1

    if-nez v0, :cond_3e

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/JB;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 48915
    :cond_3e
    if-nez v8, :cond_4b

    .line 48916
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v3, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    .line 48917
    .restart local v5
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A08(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48918
    const/4 v6, 0x0

    .line 48919
    move v7, v4

    .line 48920
    .end local v5
    :cond_4b
    const/4 v8, 0x1

    .line 48921
    .end local v6    # "vh":Lcom/facebook/ads/redexgen/X/jE;
    :goto_4c
    add-int/2addr v6, v1

    .line 48922
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 48923
    :cond_50
    if-ne v8, v1, :cond_5d

    .line 48924
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v3, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    .line 48925
    .local v5, "newOp":Lcom/facebook/ads/redexgen/X/iH;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48926
    const/4 v6, 0x0

    .line 48927
    move v7, v4

    .line 48928
    .end local v5    # "newOp":Lcom/facebook/ads/redexgen/X/iH;
    :cond_5d
    const/4 v8, 0x0

    goto :goto_4c

    .line 48929
    .end local v4    # "position":I
    :cond_5f
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-eq v6, v0, :cond_6c

    .line 48930
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    .line 48931
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48932
    invoke-virtual {p0, v3, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object p1

    .line 48933
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_6c
    if-nez v8, :cond_72

    .line 48934
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->A08(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48935
    :goto_71
    return-void

    .line 48936
    :cond_72
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/iH;)V

    goto :goto_71
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 11

    .line 48937
    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_e4

    iget v3, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_de

    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "fuh7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x8

    if-eq v3, v0, :cond_e4

    .line 48938
    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A00(II)I

    move-result v3

    .line 48939
    .local v0, "tmpStart":I
    const/4 v2, 0x1

    .line 48940
    .local v2, "tmpCnt":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 48941
    .local v3, "offsetPositionForPartial":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    packed-switch v0, :pswitch_data_f4

    .line 48942
    :pswitch_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x1e

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48943
    :pswitch_50
    const/4 v8, 0x1

    .line 48944
    .local v4, "positionMultiplier":I
    goto :goto_53

    .line 48945
    .end local v4    # "positionMultiplier":I
    :pswitch_52
    const/4 v8, 0x0

    .line 48946
    .restart local v4    # "positionMultiplier":I
    :goto_53
    const/4 v5, 0x1

    .local v5, "p":I
    :goto_54
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-ge v5, v0, :cond_b1

    .line 48947
    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    mul-int v0, v8, v5

    add-int/2addr v1, v0

    .line 48948
    .local v6, "pos":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A00(II)I

    move-result v7

    .line 48949
    .local v7, "updatedPos":I
    const/4 v6, 0x0

    .line 48950
    .local v8, "continuous":Z
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_fe

    .line 48951
    :goto_6a
    :pswitch_6a
    if-eqz v6, :cond_71

    .line 48952
    add-int/lit8 v2, v2, 0x1

    .line 48953
    .end local v6    # "pos":I
    .end local v7    # "updatedPos":I
    .end local v8    # "continuous":Z
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/JB;
    :goto_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 48954
    :cond_71
    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    .line 48955
    .local p0, "tmp":Lcom/facebook/ads/redexgen/X/iH;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/JB;->A0A(Lcom/facebook/ads/redexgen/X/iH;I)V

    .line 48956
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48957
    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_85

    .line 48958
    add-int/2addr v4, v2

    .line 48959
    :cond_85
    move v3, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9c

    .line 48960
    const/4 v2, 0x1

    goto :goto_6e

    :cond_9c
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "yo86shE8ew7ry1OmrvVtBHjQ2wHk5Ec"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v2, 0x1

    goto :goto_6e

    .line 48961
    :pswitch_a5
    add-int/lit8 v0, v3, 0x1

    if-ne v7, v0, :cond_aa

    const/4 v1, 0x1

    :cond_aa
    move v6, v1

    .line 48962
    goto :goto_6a

    .line 48963
    :pswitch_ac
    if-ne v7, v3, :cond_af

    const/4 v1, 0x1

    :cond_af
    move v6, v1

    goto :goto_6a

    .line 48964
    .end local v5    # "p":I
    :cond_b1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    .line 48965
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48966
    if-lez v2, :cond_dd

    .line 48967
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_d0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48968
    .local v5, "tmp":Lcom/facebook/ads/redexgen/X/iH;
    :cond_d0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "6SUXoeHtz7oI0Lc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/JB;->A0A(Lcom/facebook/ads/redexgen/X/iH;I)V

    .line 48969
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48970
    .end local v5    # "tmp":Lcom/facebook/ads/redexgen/X/iH;
    :cond_dd
    return-void

    :cond_de
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48971
    .end local v0    # "tmpStart":I
    .end local v1    # "payload":Ljava/lang/Object;
    .end local v2    # "tmpCnt":I
    .end local v3    # "offsetPositionForPartial":I
    .end local v4    # "positionMultiplier":I
    :cond_e4
    const/16 v2, 0x73

    const/16 v1, 0x2e

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_f4
    .packed-switch 0x2
        :pswitch_52
        :pswitch_2f
        :pswitch_50
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x2
        :pswitch_ac
        :pswitch_6a
        :pswitch_a5
    .end packed-switch
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 6

    .line 48972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48973
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    packed-switch v0, :pswitch_data_54

    .line 48974
    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48975
    :pswitch_29
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADd(II)V

    .line 48976
    goto :goto_52

    .line 48977
    :pswitch_33
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADE(IILjava/lang/Object;)V

    .line 48978
    goto :goto_52

    .line 48979
    :pswitch_3f
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADf(II)V

    .line 48980
    goto :goto_52

    .line 48981
    :pswitch_49
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADc(II)V

    .line 48982
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3f
        :pswitch_a
        :pswitch_33
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_29
    .end packed-switch
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/iH;I)V
    .registers 6

    .line 48983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/iG;->AEg(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48984
    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    packed-switch v0, :pswitch_data_2c

    .line 48985
    :pswitch_a
    const/16 v2, 0x1b

    const/16 v1, 0x3a

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48986
    :pswitch_1a
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-interface {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADE(IILjava/lang/Object;)V

    .line 48987
    goto :goto_2b

    .line 48988
    :pswitch_24
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADe(II)V

    .line 48989
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_24
        :pswitch_a
        :pswitch_1a
    .end packed-switch
.end method

.method private final A0B(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;)V"
        }
    .end annotation

    .line 48990
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 48991
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_13

    .line 48992
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iH;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 48993
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 48994
    .end local v1    # "i":I
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48995
    return-void
.end method

.method private A0C(I)Z
    .registers 10

    .line 48996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 48997
    .local v0, "count":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v4, v5, :cond_59

    .line 48998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/iH;

    .line 48999
    .local v2, "op":Lcom/facebook/ads/redexgen/X/iH;
    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/16 v0, 0x8

    const/4 v3, 0x1

    if-ne v1, v0, :cond_23

    .line 49000
    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_50

    .line 49001
    return v3

    .line 49002
    :cond_23
    iget v7, v6, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "h3FT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_50

    .line 49003
    iget v2, v6, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v2, v0

    .line 49004
    .local v3, "end":I
    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .local v4, "pos":I
    :goto_42
    if-ge v1, v2, :cond_50

    .line 49005
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_4d

    .line 49006
    return v3

    .line 49007
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 49008
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/iH;
    .end local v3    # "end":I
    .end local v4    # "pos":I
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49009
    .end local v1    # "i":I
    :cond_59
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0D(I)I
    .registers 3

    .line 49010
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/JB;->A01(II)I

    move-result v0

    return v0
.end method

.method public final A0E(I)I
    .registers 7

    .line 49011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 49012
    .local v0, "size":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v3, v4, :cond_46

    .line 49013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/iH;

    .line 49014
    .local v2, "op":Lcom/facebook/ads/redexgen/X/iH;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    sparse-switch v0, :sswitch_data_48

    .line 49015
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/iH;
    :cond_16
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 49016
    :sswitch_19
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ne v0, p1, :cond_20

    .line 49017
    iget p1, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_16

    .line 49018
    :cond_20
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ge v0, p1, :cond_26

    .line 49019
    add-int/lit8 p1, p1, -0x1

    .line 49020
    :cond_26
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-gt v0, p1, :cond_16

    .line 49021
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 49022
    :sswitch_2d
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v0, p1, :cond_16

    .line 49023
    iget v1, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    .line 49024
    .local v3, "end":I
    if-le v1, p1, :cond_3a

    .line 49025
    const/4 v0, -0x1

    return v0

    .line 49026
    :cond_3a
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr p1, v0

    .line 49027
    .end local v3    # "end":I
    goto :goto_16

    .line 49028
    :sswitch_3e
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v0, p1, :cond_16

    .line 49029
    iget v0, v2, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr p1, v0

    goto :goto_16

    .line 49030
    .end local v1    # "i":I
    :cond_46
    return p1

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_2d
        0x8 -> :sswitch_19
    .end sparse-switch
.end method

.method public final A0F()V
    .registers 5

    .line 49031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 49032
    .local v0, "count":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 49033
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iH;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->AEi(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49034
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 49035
    .end local v1    # "i":I
    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A0B(Ljava/util/List;)V

    .line 49036
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    .line 49037
    return-void
.end method

.method public final A0G()V
    .registers 8

    .line 49038
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JB;->A0F()V

    .line 49039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 49040
    .local v0, "count":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v4, v5, :cond_63

    .line 49041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/iH;

    .line 49042
    .local v2, "op":Lcom/facebook/ads/redexgen/X/iH;
    iget v0, v6, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    packed-switch v0, :pswitch_data_88

    .line 49043
    :goto_19
    :pswitch_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 49044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A04:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49045
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/iH;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 49046
    :pswitch_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/iG;->AEi(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49047
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADd(II)V

    goto :goto_19

    .line 49048
    :pswitch_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/iG;->AEi(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49049
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v2, v6, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADE(IILjava/lang/Object;)V

    .line 49050
    goto :goto_19

    .line 49051
    :pswitch_45
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/iG;->AEi(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49052
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADe(II)V

    .line 49053
    goto :goto_19

    .line 49054
    :pswitch_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/iG;->AEi(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49055
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A02:Lcom/facebook/ads/redexgen/X/iG;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iG;->ADc(II)V

    .line 49056
    goto :goto_19

    .line 49057
    .end local v1    # "i":I
    :cond_63
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A0B(Ljava/util/List;)V

    .line 49058
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_80

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49059
    :cond_80
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "6Qpi3zwbHCTXm3nhA4JhLro11ECL3LU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_54
        :pswitch_45
        :pswitch_19
        :pswitch_34
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_25
    .end packed-switch
.end method

.method public final A0H()V
    .registers 8

    .line 49060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JB;->A03:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/if;->A05(Ljava/util/List;)V

    .line 49061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 49062
    .local v0, "count":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v3, v4, :cond_5a

    .line 49063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/iH;

    .line 49064
    .local v2, "op":Lcom/facebook/ads/redexgen/X/iH;
    iget v5, v6, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v2, Lcom/facebook/ads/redexgen/X/JB;->A09:[Ljava/lang/String;

    const-string v1, "1BDdKJQJlsgxETOK14Gjs1hC7fjbuKK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    packed-switch v5, :pswitch_data_60

    .line 49065
    :goto_3e
    :pswitch_3e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_47

    .line 49066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A04:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49067
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/iH;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 49068
    :pswitch_4a
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/JB;->A05(Lcom/facebook/ads/redexgen/X/iH;)V

    goto :goto_3e

    .line 49069
    :pswitch_4e
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/JB;->A07(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49070
    goto :goto_3e

    .line 49071
    :pswitch_52
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/JB;->A06(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49072
    goto :goto_3e

    .line 49073
    :pswitch_56
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/JB;->A04(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 49074
    goto :goto_3e

    .line 49075
    .end local v1    # "i":I
    :cond_5a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49076
    return-void

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_56
        :pswitch_52
        :pswitch_3e
        :pswitch_4e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_4a
    .end packed-switch
.end method

.method public final A0I()V
    .registers 2

    .line 49077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A0B(Ljava/util/List;)V

    .line 49078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JB;->A0B(Ljava/util/List;)V

    .line 49079
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    .line 49080
    return-void
.end method

.method public final A0J()Z
    .registers 2

    .line 49081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final A0K()Z
    .registers 2

    .line 49082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final A0L(I)Z
    .registers 3

    .line 49083
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final A0M(IILjava/lang/Object;)Z
    .registers 9
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49084
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ge p2, v3, :cond_5

    .line 49085
    return v4

    .line 49086
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/JB;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49087
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A00:I

    .line 49088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1d

    const/4 v4, 0x1

    :cond_1d
    return v4
.end method

.method public final ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;
    .registers 6
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A01:Lcom/facebook/ads/redexgen/X/h7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/h7;->A3X()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iH;

    .line 49090
    .local v0, "op":Lcom/facebook/ads/redexgen/X/iH;
    if-nez v0, :cond_10

    .line 49091
    new-instance v0, Lcom/facebook/ads/redexgen/X/iH;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/iH;-><init>(IIILjava/lang/Object;)V

    .line 49092
    :goto_f
    return-object v0

    .line 49093
    :cond_10
    iput p1, v0, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    .line 49094
    iput p2, v0, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 49095
    iput p3, v0, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 49096
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    goto :goto_f
.end method

.method public final AIj(Lcom/facebook/ads/redexgen/X/iH;)V
    .registers 3

    .line 49097
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A07:Z

    if-nez v0, :cond_c

    .line 49098
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    .line 49099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JB;->A01:Lcom/facebook/ads/redexgen/X/h7;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/h7;->AIt(Ljava/lang/Object;)Z

    .line 49100
    :cond_c
    return-void
.end method
