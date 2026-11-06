###### Class com.facebook.ads.redexgen.X.C2962o9 (com.facebook.ads.redexgen.X.o9)
.class public final Lcom/facebook/ads/redexgen/X/o9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/o9;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 106187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106188
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    .line 106189
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    .line 106190
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    .line 106191
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/o9;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x59

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

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/o9;->A03:[B

    return-void

    :array_a
    .array-data 1
        -0x4et
        -0x5at
        -0x11t
        -0xdt
        -0x19t
        -0x13t
        -0x15t
        -0x25t
        -0x8t
        -0xet
        -0x3dt
        -0x3bt
        -0x47t
        0xct
        0xet
        -0x5t
        0xdt
        0x2t
        0xdt
        0x5t
        -0x2t
        -0x2at
        0x7t
        0x30t
        0x26t
        0x5t
        0x23t
        0x34t
        0x26t
        0xft
        0x27t
        0x36t
        0x23t
        0x26t
        0x23t
        0x36t
        0x23t
        0xbt
        0x36t
        0x27t
        0x2ft
        -0x16t
        0x36t
        0x2bt
        0x36t
        0x2et
        0x27t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .registers 2

    .line 106192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .registers 2

    .line 106193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .registers 2

    .line 106194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x1

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/o9;

    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/ads/redexgen/X/o9;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A0C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A0C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A0C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    return v2

    :cond_2d
    return v3
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_6
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    if-nez v0, :cond_16

    :goto_14
    add-int/2addr v1, v2

    return v1

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_1d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0xb

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o9;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
