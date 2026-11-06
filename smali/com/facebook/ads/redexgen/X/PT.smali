###### Class com.facebook.ads.redexgen.X.PT (com.facebook.ads.redexgen.X.PT)
.class public final Lcom/facebook/ads/redexgen/X/PT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aU;,
        Lcom/facebook/ads/androidx/media3/extractor/mkv/DefaultEbmlReader$ElementState;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/aW;

.field public final A04:Lcom/facebook/ads/redexgen/X/ac;

.field public final A05:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/aU;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1115
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jK8UhifJWm7LGNT9x83"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ahZWWDw4BvgkwhnavwtotOK5eXTc44sD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0CXVDnwVFrflXRFnzBkGMOHixzWuntUg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r2uOtam2DnYk6RfMjVczuds7hDzFwYfy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y7xoZaDRXgMa9Ri3FQQYkYI2mX0smZaf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GcnVxQElwfqOySl79huPeZqc4LwXo1K5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nNU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kwtlNLh8EVMEjDqX8RD2nfIBzDSvN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PT;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PT;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64645
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A06:[B

    .line 64646
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A05:Ljava/util/ArrayDeque;

    .line 64647
    new-instance v0, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ac;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A04:Lcom/facebook/ads/redexgen/X/ac;

    .line 64648
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Q9;I)D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64649
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PT;->A02(Lcom/facebook/ads/redexgen/X/Q9;I)J

    move-result-wide v1

    .line 64650
    .local v0, "integerValue":J
    const/4 v0, 0x4

    if-ne p2, v0, :cond_e

    .line 64651
    long-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 64652
    .local v2, "floatValue":D
    .restart local v2    # "floatValue":D
    :goto_d
    return-wide v0

    .line 64653
    .end local v2    # "floatValue":D
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_d
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Q9;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 64654
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->AK3()V

    .line 64655
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A06:[B

    const/4 v3, 0x0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Q9;->AI6([BII)V

    .line 64656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A06:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ac;->A00(I)I

    move-result v2

    .line 64657
    .local v0, "varintLength":I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_3f

    if-gt v2, v1, :cond_3f

    .line 64658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A06:[B

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/ac;->A01([BIZ)J

    move-result-wide v0

    long-to-int v3, v0

    .line 64659
    .local v2, "potentialId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/aW;->ABE(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 64660
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/Q9;->ALL(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/PT;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_44

    .line 64661
    sget-object v2, Lcom/facebook/ads/redexgen/X/PT;->A08:[Ljava/lang/String;

    const-string v1, "fM7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    int-to-long v0, v3

    return-wide v0

    .line 64662
    .end local v2    # "potentialId":I
    :cond_3f
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->ALL(I)V

    .line 64663
    .end local v0    # "varintLength":I
    goto :goto_3

    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Q9;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64664
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A06:[B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Q9;->readFully([BII)V

    .line 64665
    const-wide/16 v3, 0x0

    .line 64666
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_19

    .line 64667
    const/16 v0, 0x8

    shl-long/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A06:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 64668
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 64669
    .end local v2    # "i":I
    :cond_19
    return-wide v3
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/PT;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Q9;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64670
    if-nez p1, :cond_b

    .line 64671
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64672
    :cond_b
    new-array v5, p1, [B

    .line 64673
    .local v0, "stringBytes":[B
    const/4 v4, 0x0

    invoke-interface {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/Q9;->readFully([BII)V

    .line 64674
    .local v2, "trimmedLength":I
    :goto_11
    if-lez p1, :cond_36

    add-int/lit8 v3, p1, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/PT;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/PT;->A08:[Ljava/lang/String;

    const-string v1, "9767kXh3hsr56EYAJ7AVFn4L"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    aget-byte v0, v5, v3

    if-nez v0, :cond_36

    .line 64675
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64676
    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v4, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x54

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/PT;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x44t
        -0x1ft
        -0x17t
        -0x2ct
        -0x21t
        -0x24t
        -0x29t
        -0x6dt
        -0x28t
        -0x21t
        -0x28t
        -0x20t
        -0x28t
        -0x1ft
        -0x19t
        -0x6dt
        -0x19t
        -0x14t
        -0x1dt
        -0x28t
        -0x6dt
        0x5at
        0x7ft
        -0x79t
        0x72t
        0x7dt
        0x7at
        0x75t
        0x31t
        0x77t
        0x7dt
        -0x80t
        0x72t
        -0x7bt
        0x31t
        -0x7ct
        0x7at
        -0x75t
        0x76t
        0x4bt
        0x31t
        -0x38t
        -0x13t
        -0xbt
        -0x20t
        -0x15t
        -0x18t
        -0x1dt
        -0x61t
        -0x18t
        -0x13t
        -0xdt
        -0x1ct
        -0x1at
        -0x1ct
        -0xft
        -0x61t
        -0xet
        -0x18t
        -0x7t
        -0x1ct
        -0x47t
        -0x61t
        -0x45t
        -0x24t
        -0x26t
        -0x2ft
        -0x2at
        -0x31t
        -0x78t
        -0x33t
        -0x2ct
        -0x33t
        -0x2bt
        -0x33t
        -0x2at
        -0x24t
        -0x78t
        -0x25t
        -0x2ft
        -0x1et
        -0x33t
        -0x5et
        -0x78t
    .end array-data
.end method


# virtual methods
.method public final AAr(Lcom/facebook/ads/redexgen/X/aW;)V
    .registers 2

    .line 64677
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    .line 64678
    return-void
.end method

.method public final AIb(Lcom/facebook/ads/redexgen/X/Q9;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64680
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aU;

    .line 64681
    .local v0, "head":Lcom/facebook/ads/redexgen/X/aU;
    const/4 v6, 0x1

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aU;->A01(Lcom/facebook/ads/redexgen/X/aU;)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2e

    .line 64682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aU;->A00(Lcom/facebook/ads/redexgen/X/aU;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aW;->A6w(I)V

    .line 64683
    return v6

    .line 64684
    :cond_2e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    const/4 v5, 0x0

    if-nez v0, :cond_50

    .line 64685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A04:Lcom/facebook/ads/redexgen/X/ac;

    const/4 v0, 0x4

    invoke-virtual {v1, p1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/ac;->A05(Lcom/facebook/ads/redexgen/X/Q9;ZZI)J

    move-result-wide v1

    .line 64686
    .local v4, "result":J
    const-wide/16 v3, -0x2

    cmp-long v0, v1, v3

    if-nez v0, :cond_44

    .line 64687
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PT;->A01(Lcom/facebook/ads/redexgen/X/Q9;)J

    move-result-wide v1

    .line 64688
    :cond_44
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_4b

    .line 64689
    return v5

    .line 64690
    :cond_4b
    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    .line 64691
    iput v6, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64692
    .end local v4    # "result":J
    :cond_50
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    if-ne v0, v6, :cond_61

    .line 64693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A04:Lcom/facebook/ads/redexgen/X/ac;

    const/16 v0, 0x8

    invoke-virtual {v1, p1, v5, v6, v0}, Lcom/facebook/ads/redexgen/X/ac;->A05(Lcom/facebook/ads/redexgen/X/Q9;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    .line 64694
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64695
    :cond_61
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aW;->A8V(I)I

    move-result v4

    .line 64696
    .local v2, "type":I
    const-wide/16 v8, 0x8

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_17a

    .line 64697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 64698
    .end local v10
    .end local v12
    :pswitch_8e
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->ALL(I)V

    .line 64699
    iput v5, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64700
    .end local v0    # "head":Lcom/facebook/ads/redexgen/X/aU;
    .end local v2    # "type":I
    goto/16 :goto_5

    .line 64701
    :pswitch_98
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    const-wide/16 v3, 0x4

    cmp-long v2, v0, v3

    if-eqz v2, :cond_a6

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    cmp-long v2, v0, v8

    if-nez v2, :cond_b7

    .line 64702
    :cond_a6
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A00(Lcom/facebook/ads/redexgen/X/Q9;I)D

    move-result-wide v0

    invoke-interface {v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/aW;->A7A(ID)V

    .line 64703
    iput v5, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64704
    return v6

    .line 64705
    :cond_b7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x14

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 64706
    :pswitch_d8
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    long-to-int v0, v1

    invoke-interface {v4, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/aW;->A5B(IILcom/facebook/ads/redexgen/X/Q9;)V

    .line 64707
    iput v5, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64708
    return v6

    .line 64709
    :pswitch_e5
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v2, v0, v3

    if-gtz v2, :cond_ff

    .line 64710
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    long-to-int v0, v1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A04(Lcom/facebook/ads/redexgen/X/Q9;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/aW;->ALd(ILjava/lang/String;)V

    .line 64711
    iput v5, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64712
    return v6

    .line 64713
    :cond_ff
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    const/16 v1, 0x15

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 64714
    :pswitch_121
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    cmp-long v2, v0, v8

    if-gtz v2, :cond_138

    .line 64715
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A02(Lcom/facebook/ads/redexgen/X/Q9;I)J

    move-result-wide v0

    invoke-interface {v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/aW;->AAv(IJ)V

    .line 64716
    iput v5, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64717
    return v6

    .line 64718
    :cond_138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0x16

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 64719
    :pswitch_15a
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v9

    .line 64720
    .local v10, "elementContentPosition":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    add-long v2, v9, v0

    .line 64721
    .local v12, "elementEndPosition":J
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PT;->A05:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/aU;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/facebook/ads/redexgen/X/aU;-><init>(IJLcom/facebook/ads/redexgen/X/aS;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 64722
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/PT;->A03:Lcom/facebook/ads/redexgen/X/aW;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:I

    iget-wide v11, p0, Lcom/facebook/ads/redexgen/X/PT;->A02:J

    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/aW;->ALS(IJJ)V

    .line 64723
    iput v5, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64724
    return v6

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_15a
        :pswitch_121
        :pswitch_e5
        :pswitch_d8
        :pswitch_98
    .end packed-switch
.end method

.method public final reset()V
    .registers 2

    .line 64725
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:I

    .line 64726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 64727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A04:Lcom/facebook/ads/redexgen/X/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ac;->A06()V

    .line 64728
    return-void
.end method
