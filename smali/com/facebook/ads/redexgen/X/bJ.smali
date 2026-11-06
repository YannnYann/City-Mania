###### Class com.facebook.ads.redexgen.X.C2179bJ (com.facebook.ads.redexgen.X.bJ)
.class public final Lcom/facebook/ads/redexgen/X/bJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public final A09:[I

.field public final A0A:Lcom/facebook/ads/redexgen/X/Mk;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1867
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HGPuB8qmuxBgpGTqkkjvYzrCDskUp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sF6fS75l2Cff0tziaX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zza04ks"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dNGMYSaiVbuE60ePOHja3XP4IlV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q5npa5t"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wgntkRyUJ0qfijEJi4TyzmgID1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fepOHmymjACox7eFs8FhQnXrtP3Evpqq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KxtJjVrZLWzYUfpgJdwgfb5Z4AGZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bJ;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bJ;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 83034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83035
    const/16 v1, 0xff

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A09:[I

    .line 83036
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/bJ;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/bJ;->A0B:[B

    return-void

    :array_a
    .array-data 1
        0x22t
        0x39t
        0x24t
        0x22t
        0x27t
        0x27t
        0x38t
        0x25t
        0x23t
        0x32t
        0x33t
        0x77t
        0x35t
        0x3et
        0x23t
        0x77t
        0x24t
        0x23t
        0x25t
        0x32t
        0x36t
        0x3at
        0x77t
        0x25t
        0x32t
        0x21t
        0x3et
        0x24t
        0x3et
        0x38t
        0x39t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .registers 4

    .line 83037
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:I

    .line 83038
    iput v2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    .line 83039
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A05:J

    .line 83040
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A08:J

    .line 83041
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A07:J

    .line 83042
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A06:J

    .line 83043
    iput v2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    .line 83044
    iput v2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:I

    .line 83045
    iput v2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:I

    .line 83046
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Q9;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83047
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/bJ;->A04(Lcom/facebook/ads/redexgen/X/Q9;J)Z

    move-result v0

    return v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Q9;J)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83048
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A9L()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v3, 0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_69

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 83049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Mk;->A0d(I)V

    .line 83050
    :goto_18
    const-wide/16 v8, -0x1

    cmp-long v0, p2, v8

    if-eqz v0, :cond_29

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v5

    const-wide/16 v0, 0x4

    add-long/2addr v5, v0

    cmp-long v0, v5, p2

    if-gez v0, :cond_6b

    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    .line 83051
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/bJ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_42

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 83052
    :cond_42
    sget-object v2, Lcom/facebook/ads/redexgen/X/bJ;->A0C:[Ljava/lang/String;

    const-string v1, "talPG6FYcHiBUTQzt0zzTBAf7LU39"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {p1, v5, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/Yx;->A04(Lcom/facebook/ads/redexgen/X/Q9;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 83053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mk;->A0f(I)V

    .line 83054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0Q()J

    move-result-wide v5

    const-wide/32 v1, 0x4f676753

    cmp-long v0, v5, v1

    if-nez v0, :cond_65

    .line 83055
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->AK3()V

    .line 83056
    return v3

    .line 83057
    :cond_65
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Q9;->ALL(I)V

    goto :goto_18

    .line 83058
    :cond_69
    const/4 v0, 0x0

    goto :goto_f

    .line 83059
    :cond_6b
    :goto_6b
    cmp-long v0, p2, v8

    if-eqz v0, :cond_77

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v1

    cmp-long v0, v1, p2

    if-gez v0, :cond_7f

    .line 83060
    :cond_77
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Q9;->ALI(I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_7f

    goto :goto_6b

    .line 83061
    :cond_7f
    return v4
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Q9;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83062
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bJ;->A02()V

    .line 83063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    const/16 v3, 0x1b

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mk;->A0d(I)V

    .line 83064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v3, p2}, Lcom/facebook/ads/redexgen/X/Yx;->A04(Lcom/facebook/ads/redexgen/X/Q9;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    .line 83065
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0Q()J

    move-result-wide v6

    const-wide/32 v4, 0x4f676753

    cmp-long v0, v6, v4

    if-eqz v0, :cond_25

    .line 83066
    :cond_24
    return v2

    .line 83067
    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:I

    .line 83068
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:I

    if-eqz v0, :cond_42

    .line 83069
    if-eqz p2, :cond_34

    .line 83070
    return v2

    .line 83071
    :cond_34
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 83072
    :cond_42
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    .line 83073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A05:J

    .line 83074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A08:J

    .line 83075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A07:J

    .line 83076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A06:J

    .line 83077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    .line 83078
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:I

    .line 83079
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0d(I)V

    .line 83080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    invoke-static {p1, v1, v2, v0, p2}, Lcom/facebook/ads/redexgen/X/Yx;->A04(Lcom/facebook/ads/redexgen/X/Q9;[BIIZ)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 83081
    return v2

    .line 83082
    :cond_8d
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_8e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:I

    if-ge v2, v0, :cond_a8

    .line 83083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A09:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A0A:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    aput v0, v1, v2

    .line 83084
    iget v1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A09:[I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:I

    .line 83085
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 83086
    .end local v0    # "i":I
    :cond_a8
    const/4 v0, 0x1

    return v0
.end method
