###### Class com.facebook.ads.redexgen.X.S4 (com.facebook.ads.redexgen.X.S4)
.class public final Lcom/facebook/ads/redexgen/X/S4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/S4;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/S4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3f

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

    const/16 v0, 0x7d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/S4;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x74t
        0x41t
        0x41t
        0x50t
        0x58t
        0x45t
        0x41t
        0x50t
        0x51t
        0x15t
        0x41t
        0x5at
        0x15t
        0x56t
        0x47t
        0x50t
        0x54t
        0x41t
        0x50t
        0x15t
        0x51t
        0x50t
        0x56t
        0x5at
        0x51t
        0x50t
        0x47t
        0x15t
        0x53t
        0x5at
        0x47t
        0x15t
        0x40t
        0x5bt
        0x46t
        0x40t
        0x45t
        0x45t
        0x5at
        0x47t
        0x41t
        0x50t
        0x51t
        0x15t
        0x78t
        0x7ct
        0x78t
        0x70t
        0x15t
        0x41t
        0x4ct
        0x45t
        0x50t
        0xft
        0x15t
        0xct
        0x1dt
        0x1dt
        0x1t
        0x4t
        0xet
        0xct
        0x19t
        0x4t
        0x2t
        0x3t
        0x42t
        0x4t
        0x9t
        0x5et
        0x13t
        0x2t
        0x2t
        0x1et
        0x1bt
        0x11t
        0x13t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x5dt
        0xat
        0x5ft
        0x17t
        0x1ft
        0x1t
        0x15t
        0x23t
        0x32t
        0x32t
        0x2et
        0x2bt
        0x21t
        0x23t
        0x36t
        0x2bt
        0x2dt
        0x2ct
        0x6dt
        0x3at
        0x6ft
        0x2bt
        0x21t
        0x3bt
        0x33t
        0x22t
        0x22t
        0x3et
        0x3bt
        0x31t
        0x33t
        0x26t
        0x3bt
        0x3dt
        0x3ct
        0x7dt
        0x2at
        0x7ft
        0x21t
        0x31t
        0x26t
        0x37t
        0x61t
        0x67t
    .end array-data
.end method


# virtual methods
.method public final A5s(Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/Zi;
    .registers 7

    .line 68766
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 68767
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 68768
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_90

    :cond_b
    const/4 v0, -0x1

    :goto_c
    packed-switch v0, :pswitch_data_a2

    .line 68769
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x37

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68770
    :sswitch_2f
    const/16 v2, 0x69

    const/16 v1, 0x14

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_c

    :sswitch_41
    const/16 v2, 0x46

    const/16 v1, 0x12

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :sswitch_53
    const/16 v2, 0x37

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :sswitch_65
    const/16 v2, 0x58

    const/16 v1, 0x11

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_c

    .line 68771
    :pswitch_77
    new-instance v0, Lcom/facebook/ads/redexgen/X/8c;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8c;-><init>()V

    return-object v0

    .line 68772
    :pswitch_7d
    new-instance v0, Lcom/facebook/ads/redexgen/X/8O;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8O;-><init>()V

    return-object v0

    .line 68773
    :pswitch_83
    new-instance v0, Lcom/facebook/ads/redexgen/X/8d;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8d;-><init>()V

    return-object v0

    .line 68774
    :pswitch_89
    new-instance v0, Lcom/facebook/ads/redexgen/X/8V;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-object v0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x505c61b5 -> :sswitch_65
        -0x4a682ec7 -> :sswitch_53
        0x44ce7ed0 -> :sswitch_41
        0x62816bb7 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_89
        :pswitch_83
        :pswitch_7d
        :pswitch_77
    .end packed-switch
.end method

.method public final ALg(Lcom/facebook/ads/redexgen/X/VC;)Z
    .registers 6

    .line 68775
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 68776
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x37

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 68777
    const/16 v2, 0x46

    const/16 v1, 0x12

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 68778
    const/16 v2, 0x69

    const/16 v1, 0x14

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 68779
    const/16 v2, 0x58

    const/16 v1, 0x11

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_42
    const/4 v0, 0x1

    .line 68780
    :goto_43
    return v0

    .line 68781
    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

###### Class com.facebook.ads.redexgen.X.C8O (com.facebook.ads.redexgen.X.8O)
.class public final Lcom/facebook/ads/redexgen/X/8O;
.super Lcom/facebook/ads/redexgen/X/Pn;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ms;

.field public final A01:Lcom/facebook/ads/redexgen/X/Mj;

.field public final A02:Lcom/facebook/ads/redexgen/X/Mk;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 321
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "n3oSDOjILC8nkK5MDeJcfvd5oZ0pMGYd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8IIKAqVl32mc7rvtt79c8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7cqAUWop00"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jl1NLvbQZHp5M49mY1w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LW8wdKMMkXQQjNMcwxf6tEQUjrCCIDcM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IaGaQJUZcnrByaVErsY8RqppJ8ZqdxUO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7be1BZH3Acn4CZRXBqTo9OU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bpF8bHI2ZO8AAE1EATMBc5FWdgCLYhKc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8O;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23598
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>()V

    .line 23599
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    .line 23600
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    .line 23601
    return-void
.end method


# virtual methods
.method public final A0R(Lcom/facebook/ads/redexgen/X/8e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .registers 11

    .line 23602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    if-eqz v0, :cond_10

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/8e;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    .line 23603
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_23

    .line 23604
    :cond_10
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/T2;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ms;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    .line 23605
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/T2;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/8e;->A00:J

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ms;->A05(J)J

    .line 23606
    :cond_23
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 23607
    .local v0, "data":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 23608
    .local v1, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mk;->A0j([BI)V

    .line 23609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A0E([BI)V

    .line 23610
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 23611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    int-to-long v2, v0

    .line 23612
    .local v4, "ptsAdjustment":J
    const/16 v1, 0x20

    shl-long/2addr v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v2, v0

    .line 23613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(I)V

    .line 23614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v7

    .line 23615
    .local v2, "spliceCommandLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(I)I

    move-result v6

    .line 23616
    .local v6, "spliceCommandType":I
    const/4 v4, 0x0

    .line 23617
    .local v7, "command":Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0g(I)V

    .line 23618
    sparse-switch v6, :sswitch_data_f4

    .line 23619
    :goto_71
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8O;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23620
    :sswitch_8c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0, v7, v2, v3}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A00(Lcom/facebook/ads/redexgen/X/Mk;IJ)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;

    move-result-object v4

    .line 23621
    goto :goto_71

    .line 23622
    :sswitch_93
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A01(Lcom/facebook/ads/redexgen/X/Mk;JLcom/facebook/ads/redexgen/X/Ms;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    move-result-object v4

    .line 23623
    goto :goto_71

    .line 23624
    :sswitch_9c
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8O;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_b9

    sget-object v4, Lcom/facebook/ads/redexgen/X/8O;->A03:[Ljava/lang/String;

    const-string v1, "JI47Zgd8Jt"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    .line 23625
    invoke-static {v6, v2, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A00(Lcom/facebook/ads/redexgen/X/Mk;JLcom/facebook/ads/redexgen/X/Ms;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    move-result-object v4

    .line 23626
    goto :goto_71

    :cond_b9
    sget-object v4, Lcom/facebook/ads/redexgen/X/8O;->A03:[Ljava/lang/String;

    const-string v1, "N0llC2hhCUiYKwfEbG1UWX2Qu12EVLOO"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "nGztm6VWCjrvHD3EpfBx23VS1fLgIjH1"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    .line 23627
    invoke-static {v6, v2, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A00(Lcom/facebook/ads/redexgen/X/Mk;JLcom/facebook/ads/redexgen/X/Ms;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    move-result-object v4

    .line 23628
    goto :goto_71

    .line 23629
    :sswitch_cc
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Lcom/facebook/ads/redexgen/X/Mk;

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00(Lcom/facebook/ads/redexgen/X/Mk;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    move-result-object v4

    .line 23630
    goto :goto_71

    .line 23631
    :sswitch_d3
    new-instance v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {v4}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 23632
    goto :goto_71

    .line 23633
    :cond_d9
    sget-object v2, Lcom/facebook/ads/redexgen/X/8O;->A03:[Ljava/lang/String;

    const-string v1, "jcyPVlcDX1DJIP38"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v4, :cond_ea

    .line 23634
    new-array v1, v3, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    :goto_e9
    return-object v0

    :cond_ea
    new-array v1, v5, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    aput-object v4, v1, v3

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    goto :goto_e9

    :sswitch_data_f4
    .sparse-switch
        0x0 -> :sswitch_d3
        0x4 -> :sswitch_cc
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_93
        0xff -> :sswitch_8c
    .end sparse-switch
.end method

###### Class com.facebook.ads.redexgen.X.C14198c (com.facebook.ads.redexgen.X.8c)
.class public final Lcom/facebook/ads/redexgen/X/8c;
.super Lcom/facebook/ads/redexgen/X/Pn;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/nio/charset/CharsetDecoder;

.field public final A01:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 335
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ORhDGRCfm6ji9bBYM9TfwHjExpKLrjiC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "urTTImJSFhm1bLt6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I4XPTFyDLwRuAuwsqLrx1rwv5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QcAIKtpHrYMdobtRMd98"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sEetp07C1F3FvLBnnYv9gPHrnpBZK9mL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "w4eoNYAe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GteP5to6gbvwc9bhn3Sa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ooDzhzhSJUfGbMBNMhdRTCSemPznLcyQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8c;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8c;->A02()V

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8c;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x20

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8c;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24453
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>()V

    .line 24454
    sget-object v0, Lcom/facebook/ads/redexgen/X/XA;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Ljava/nio/charset/CharsetDecoder;

    .line 24455
    sget-object v0, Lcom/facebook/ads/redexgen/X/XA;->A00:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Ljava/nio/charset/CharsetDecoder;

    .line 24456
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/8c;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4

    .line 24457
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_a} :catch_1d
    .catchall {:try_start_0 .. :try_end_a} :catchall_13

    .line 24458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 24459
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24460
    return-object v1

    .line 24461
    :catchall_13
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 24462
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24463
    throw v1

    .line 24464
    :catch_1d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 24465
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24466
    :try_start_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_25 .. :try_end_2f} :catch_42
    .catchall {:try_start_25 .. :try_end_2f} :catchall_38

    .line 24467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 24468
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24469
    return-object v1

    .line 24470
    :catchall_38
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 24471
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24472
    throw v1

    .line 24473
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    :catch_42
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 24474
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24475
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/8c;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x19t
        0x1ft
        0x1at
        0xet
        0x18t
        0xct
        0x16t
        0x19t
        0x1ft
        0x1bt
        0xet
        0x18t
        0x16t
        0xat
        0x5ft
        0x58t
        0x5et
        0x49t
        0x4dt
        0x41t
        0x58t
        0x45t
        0x58t
        0x40t
        0x49t
        0x54t
        0x53t
        0x55t
        0x42t
        0x46t
        0x4at
        0x52t
        0x55t
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final A0R(Lcom/facebook/ads/redexgen/X/8e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .registers 14

    .line 24476
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/8c;->A01(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 24477
    .local v0, "icyString":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v5, v0, [B

    .line 24478
    .local v1, "icyBytes":[B
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24479
    const/4 v10, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_21

    .line 24480
    new-array v2, v7, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {v0, v5, v1, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v10

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0

    .line 24481
    :cond_21
    const/4 v6, 0x0

    .line 24482
    .local v4, "name":Ljava/lang/String;
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8c;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24483
    .local v5, "url":Ljava/lang/String;
    :cond_3b
    sget-object v2, Lcom/facebook/ads/redexgen/X/8c;->A03:[Ljava/lang/String;

    const-string v1, "PyFrCZXe0xAxDdfiClsBOvQlSK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x0

    .line 24484
    .local v6, "index":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/8c;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 24485
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_49
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 24486
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 24487
    .local v8, "key":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 24488
    .local v9, "value":Ljava/lang/String;
    if-eqz v2, :cond_69

    .line 24489
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XC;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_a6

    :cond_65
    const/4 v1, -0x1

    :goto_66
    packed-switch v1, :pswitch_data_b0

    .line 24490
    :cond_69
    :goto_69
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 24491
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_49

    .line 24492
    :pswitch_6e
    move-object v4, v9

    .line 24493
    goto :goto_69

    .line 24494
    :pswitch_70
    move-object v6, v9

    .line 24495
    goto :goto_69

    .line 24496
    :sswitch_72
    const/16 v3, 0xe

    const/16 v2, 0xb

    const/16 v1, 0x34

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/8c;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x0

    goto :goto_66

    :sswitch_84
    const/16 v3, 0x19

    const/16 v2, 0x9

    const/16 v1, 0x3f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/8c;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    goto :goto_66

    .line 24497
    :cond_96
    new-array v1, v7, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {v0, v5, v6, v4}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v10

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x12cfba11 -> :sswitch_84
        0x622482d8 -> :sswitch_72
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6e
    .end packed-switch
.end method

###### Class com.facebook.ads.redexgen.X.C14208d (com.facebook.ads.redexgen.X.8d)
.class public final Lcom/facebook/ads/redexgen/X/8d;
.super Lcom/facebook/ads/redexgen/X/Pn;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24498
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Mk;)Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;
    .registers 12

    .line 24499
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24500
    .local v0, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24501
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0P()J

    move-result-wide v5

    .line 24502
    .local p0, "durationMs":J
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0P()J

    move-result-wide v7

    .line 24503
    .local p2, "id":J
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A0A()I

    move-result v0

    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 24504
    .local p4, "messageData":[B
    new-instance v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v2
.end method


# virtual methods
.method public final A0R(Lcom/facebook/ads/redexgen/X/8e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .registers 7

    .line 24505
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8d;->A00(Lcom/facebook/ads/redexgen/X/Mk;)Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0
.end method
