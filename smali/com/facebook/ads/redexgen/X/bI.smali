###### Class com.facebook.ads.redexgen.X.C2178bI (com.facebook.ads.redexgen.X.bI)
.class public final Lcom/facebook/ads/redexgen/X/bI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A04:Lcom/facebook/ads/redexgen/X/bJ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1866
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7HPX5QbBl7E5EbUQPcKmEzjWCG4LrmwT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ygyGCkLJvoZBhmle1B6JVDDau9ImKpku"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DHdl1NsMKs5M8l"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rSeDRL8ka"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MxStOy49MCB4pDgnTOrwxDHe8KkSLg5r"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7C69duVQ4AUme6rB11qfzHoDidqUT7yE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uwct2hFMWSb4Fkjvm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vR4EpVshYRBKG4fumVmPB58VuXbddHmx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bI;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 82979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82980
    new-instance v0, Lcom/facebook/ads/redexgen/X/bJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bJ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    .line 82981
    const v0, 0xfe01

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    .line 82982
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    return-void
.end method

.method private A00(I)I
    .registers 6

    .line 82983
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A01:I

    .line 82984
    const/4 v3, 0x0

    .line 82985
    .local v0, "size":I
    :cond_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/bI;->A01:I

    add-int/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    if-ge v1, v0, :cond_1f

    .line 82986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bJ;->A09:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/bI;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A01:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    .line 82987
    .local v1, "segmentLength":I
    add-int/2addr v3, v1

    .line 82988
    const/16 v0, 0xff

    if-eq v1, v0, :cond_4

    .line 82989
    :cond_1f
    return v3
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/Mk;
    .registers 2

    .line 82990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/bJ;
    .registers 2

    .line 82991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    return-object v0
.end method

.method public final A03()V
    .registers 3

    .line 82992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bJ;->A02()V

    .line 82993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mk;->A0d(I)V

    .line 82994
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    .line 82995
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/bI;->A02:Z

    .line 82996
    return-void
.end method

.method public final A04()V
    .registers 5

    .line 82997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v0

    array-length v0, v0

    const v3, 0xfe01

    if-ne v0, v3, :cond_d

    .line 82998
    return-void

    .line 82999
    :cond_d
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    .line 83000
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 83001
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    .line 83002
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    .line 83003
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 83004
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Q9;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83005
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_e4

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 83006
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A02:Z

    if-eqz v0, :cond_13

    .line 83007
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bI;->A02:Z

    .line 83008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0d(I)V

    .line 83009
    :cond_13
    :goto_13
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/bI;->A02:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/bI;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/bI;->A05:[Ljava/lang/String;

    const-string v1, "bWktL1Cb6EOJU2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_e7

    .line 83010
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    if-gez v0, :cond_90

    .line 83011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bJ;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/bI;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_68

    sget-object v2, Lcom/facebook/ads/redexgen/X/bI;->A05:[Ljava/lang/String;

    const-string v1, "dPJCyuH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_67

    :goto_5f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/bJ;->A05(Lcom/facebook/ads/redexgen/X/Q9;Z)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 83012
    .end local v2
    .end local v3
    :cond_67
    return v3

    :cond_68
    if-eqz v5, :cond_67

    goto :goto_5f

    .line 83013
    :cond_6b
    const/4 v2, 0x0

    .line 83014
    .local v2, "segmentIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/bJ;->A01:I

    .line 83015
    .local v3, "bytesToSkip":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_87

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    if-nez v0, :cond_87

    .line 83016
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/bI;->A00(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 83017
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A01:I

    add-int/2addr v2, v0

    .line 83018
    :cond_87
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Yx;->A02(Lcom/facebook/ads/redexgen/X/Q9;I)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 83019
    return v3

    .line 83020
    :cond_8e
    iput v2, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    .line 83021
    :cond_90
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bI;->A00(I)I

    move-result v5

    .line 83022
    .local v2, "size":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A01:I

    add-int/2addr v2, v0

    .line 83023
    .local v3, "segmentIndex":I
    if-lez v5, :cond_d7

    .line 83024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0c(I)V

    .line 83025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    invoke-static {p1, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Yx;->A03(Lcom/facebook/ads/redexgen/X/Q9;[BII)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 83026
    return v3

    .line 83027
    :cond_bc
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A03:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0e(I)V

    .line 83028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bJ;->A09:[I

    add-int/lit8 v0, v2, -0x1

    aget v1, v1, v0

    const/16 v0, 0xff

    if-eq v1, v0, :cond_e2

    const/4 v0, 0x1

    :goto_d5
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A02:Z

    .line 83029
    :cond_d7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A04:Lcom/facebook/ads/redexgen/X/bJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    if-ne v2, v0, :cond_de

    const/4 v2, -0x1

    :cond_de
    iput v2, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:I

    .line 83030
    .end local v2    # "size":I
    .end local v3    # "segmentIndex":I
    goto/16 :goto_13

    .line 83031
    :cond_e2
    const/4 v0, 0x0

    goto :goto_d5

    .line 83032
    :cond_e4
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 83033
    :cond_e7
    return v4
.end method
