###### Class com.facebook.ads.redexgen.X.C4G (com.facebook.ads.redexgen.X.4G)
.class public final Lcom/facebook/ads/redexgen/X/4G;
.super Lcom/facebook/ads/redexgen/X/97;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Zi;

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Xl;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Z

.field public final A06:Landroid/os/Handler;

.field public final A07:Lcom/facebook/ads/redexgen/X/TQ;

.field public final A08:Lcom/facebook/ads/redexgen/X/TS;

.field public final A09:Lcom/facebook/ads/redexgen/X/8e;

.field public final A0A:[J

.field public final A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 158
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jG03nJPLnIdW77QYzbNURZrBZJ3g2m0C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "w9HEw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yzIFmJQGza6CRTztz2qPW8aZF6xaK1Vl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GVDZkNGTryXVujDUeIVKoj31BrsO3cEj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fYBX7b7Vtu0gzfliA9KTcW1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AoZi8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vcAWYhr9637Ynn6IvK0STjDBV3GgNYoY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DFScMmEeOoo5rQdakAbf8Kr218MzmOC9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4G;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4G;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TS;Landroid/os/Looper;)V
    .registers 5

    .line 9467
    sget-object v1, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/TQ;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;-><init>(Lcom/facebook/ads/redexgen/X/TS;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/TQ;Ljava/lang/String;)V

    .line 9468
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TS;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/TQ;Ljava/lang/String;)V
    .registers 7

    .line 9469
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/97;-><init>(I)V

    .line 9470
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A08:Lcom/facebook/ads/redexgen/X/TS;

    .line 9471
    if-nez p2, :cond_2c

    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A06:Landroid/os/Handler;

    .line 9472
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A07:Lcom/facebook/ads/redexgen/X/TQ;

    .line 9473
    new-instance v0, Lcom/facebook/ads/redexgen/X/8e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    .line 9474
    new-array v0, v1, [Lcom/facebook/ads/androidx/media3/common/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 9475
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A0A:[J

    .line 9476
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/4G;->A08(Ljava/lang/String;)V

    .line 9477
    return-void

    .line 9478
    :cond_2c
    invoke-static {p2, p0}, Lcom/facebook/ads/redexgen/X/N1;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_f
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4G;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .registers 3

    .line 9479
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9480
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    .line 9481
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    .line 9482
    return-void
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4G;->A0C:[B

    return-void

    :array_a
    .array-data 1
        0x26t
        0x11t
        0x11t
        0xct
        0x11t
        0x43t
        0xat
        0xdt
        0x43t
        0x13t
        0x2t
        0x11t
        0x10t
        0xat
        0xdt
        0x4t
        0x43t
        0x2at
        0x2et
        0x25t
        0x43t
        0x10t
        0x13t
        0x6t
        0x0t
        0x4et
        0x66t
        0x77t
        0x62t
        0x67t
        0x62t
        0x77t
        0x62t
        0x51t
        0x66t
        0x6dt
        0x67t
        0x66t
        0x71t
        0x66t
        0x71t
    .end array-data
.end method

.method private A03(J)V
    .registers 8

    .line 9483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Ljava/util/List;

    if-nez v0, :cond_5

    .line 9484
    return-void

    .line 9485
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Xl;

    .line 9486
    .local v1, "imfDataTrack":Lcom/facebook/ads/redexgen/X/Xl;
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Xl;->A01:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_b

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Xl;->A00:J

    cmp-long v0, v1, p1

    if-ltz v0, :cond_b

    goto :goto_b

    .line 9487
    :cond_24
    return-void
.end method

.method private A04(J)V
    .registers 8

    .line 9488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Ljava/util/List;

    if-nez v0, :cond_5

    .line 9489
    return-void

    .line 9490
    :cond_5
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/KN;->A01(J)J

    move-result-wide v3

    .line 9491
    .local v0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A06:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 9492
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4G;->A06:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9493
    :goto_1b
    return-void

    .line 9494
    :cond_1c
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/4G;->A03(J)V

    goto :goto_1b
.end method

.method private A05(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .registers 9

    .line 9495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A06:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 9496
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4G;->A06:Landroid/os/Handler;

    .line 9497
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const/4 v0, 0x1

    aput-object v3, v2, v0

    invoke-virtual {v4, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9498
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9499
    :goto_1a
    return-void

    .line 9500
    :cond_1b
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4G;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    goto :goto_1a
.end method

.method private A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .registers 5

    .line 9501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A08:Lcom/facebook/ads/redexgen/X/TS;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TS;->AFx(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 9502
    return-void
.end method

.method private A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 9503
    .local p3, "decodedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    if-ge v3, v0, :cond_60

    .line 9504
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;->AAF()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v1

    .line 9505
    .local v1, "wrappedMetadataFormat":Lcom/facebook/ads/redexgen/X/VC;
    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A07:Lcom/facebook/ads/redexgen/X/TQ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/TQ;->ALg(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 9506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A07:Lcom/facebook/ads/redexgen/X/TQ;

    .line 9507
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/TQ;->A5s(Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/Zi;

    move-result-object v4

    .line 9508
    .local v2, "wrappedMetadataDecoder":Lcom/facebook/ads/redexgen/X/Zi;
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;->AAE()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 9509
    .local v3, "wrappedMetadataBytes":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T2;->A0A()V

    .line 9510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    array-length v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T2;->A0C(I)V

    .line 9511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T2;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T2;->A0B()V

    .line 9513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Zi;->A6N(Lcom/facebook/ads/redexgen/X/8e;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    .line 9514
    .local v4, "innerMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v0, :cond_55

    .line 9515
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4G;->A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V

    .line 9516
    .end local v1    # "wrappedMetadataFormat":Lcom/facebook/ads/redexgen/X/VC;
    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9517
    :cond_58
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 9518
    .end local v0    # "i":I
    :cond_60
    return-void
.end method

.method private A08(Ljava/lang/String;)V
    .registers 6

    .line 9519
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 9520
    :try_start_8
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Xk;->A01(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Ljava/util/List;

    goto :goto_25
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_f} :catch_f

    .line 9521
    .local v0, "e":Lorg/json/JSONException;
    :catch_f
    const/16 v2, 0x19

    const/16 v1, 0x10

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 9522
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public final A1Z()V
    .registers 2

    .line 9523
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;->A01()V

    .line 9524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Lcom/facebook/ads/redexgen/X/Zi;

    .line 9525
    return-void
.end method

.method public final A1a(JZ)V
    .registers 5

    .line 9526
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;->A01()V

    .line 9527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Z

    .line 9528
    return-void
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/VC;JJ)V
    .registers 8

    .line 9529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A07:Lcom/facebook/ads/redexgen/X/TQ;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A5s(Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/Zi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Lcom/facebook/ads/redexgen/X/Zi;

    .line 9530
    return-void
.end method

.method public final AB7()Z
    .registers 2

    .line 9531
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Z

    return v0
.end method

.method public final ABM()Z
    .registers 2

    .line 9532
    const/4 v0, 0x1

    return v0
.end method

.method public final AJo(JJ)V
    .registers 11

    .line 9533
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4G;->A04(J)V

    .line 9534
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Z

    const/4 v4, 0x5

    const/4 v3, 0x1

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    if-ge v0, v4, :cond_2a

    .line 9535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T2;->A0A()V

    .line 9536
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A1U()Lcom/facebook/ads/redexgen/X/Oo;

    move-result-object v2

    .line 9537
    .local v0, "formatHolder":Lcom/facebook/ads/redexgen/X/Oo;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/97;->A1R(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/T2;I)I

    move-result v1

    .line 9538
    .local v3, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_cf

    .line 9539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nj;->A05()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 9540
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Z

    .line 9541
    .end local v0    # "formatHolder":Lcom/facebook/ads/redexgen/X/Oo;
    .end local v3    # "result":I
    :cond_2a
    :goto_2a
    iget v5, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4G;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_e0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A0D:[Ljava/lang/String;

    const-string v1, "CBQ2GCk8g09uaQW8d4b42KHDXx6eEOrt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lez v5, :cond_7a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A0A:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    aget-wide v1, v1, v0

    cmp-long v0, v1, p1

    if-gtz v0, :cond_7a

    .line 9542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 9543
    .local v0, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A0A:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    aget-wide v0, v1, v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/KN;->A01(J)J

    move-result-wide v0

    .line 9544
    .local v3, "offsetMs":J
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4G;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 9545
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4G;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 9546
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    add-int/2addr v0, v3

    rem-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    .line 9547
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    .line 9548
    .end local v0    # "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v3    # "offsetMs":J
    :cond_7a
    return-void

    .line 9549
    :cond_7b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nj;->A04()Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_2a

    .line 9550
    :cond_84
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/8e;->A00:J

    .line 9551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T2;->A0B()V

    .line 9552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Lcom/facebook/ads/redexgen/X/Zi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Zi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Zi;->A6N(Lcom/facebook/ads/redexgen/X/8e;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v1

    .line 9553
    .local v4, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v1, :cond_2a

    .line 9554
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9555
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/4G;->A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V

    .line 9556
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 9557
    new-instance v1, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v1, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 9558
    .local p0, "expandedMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    add-int/2addr v5, v0

    rem-int/2addr v5, v4

    .line 9559
    .local p1, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    aput-object v1, v0, v5

    .line 9560
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4G;->A0A:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A09:Lcom/facebook/ads/redexgen/X/8e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/T2;->A01:J

    aput-wide v0, v2, v5

    .line 9561
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    goto/16 :goto_2a

    .line 9562
    :cond_cf
    const/4 v0, -0x5

    if-ne v1, v0, :cond_2a

    .line 9563
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Oo;->A00:Lcom/facebook/ads/redexgen/X/VC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VC;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:J

    goto/16 :goto_2a

    :cond_e0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ALf(Lcom/facebook/ads/redexgen/X/VC;)I
    .registers 6

    .line 9564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A07:Lcom/facebook/ads/redexgen/X/TQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/TQ;->ALg(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 9565
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4H;->A1G(Lcom/facebook/ads/redexgen/X/VC;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 9566
    const/4 v0, 0x4

    .line 9567
    :goto_f
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PX;->A00(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4G;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2c

    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A0D:[Ljava/lang/String;

    const-string v1, "Yn5UnW3GEFNnoYd3Sx1NAkqkg2l3kJUi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .line 9568
    :cond_2a
    const/4 v0, 0x2

    goto :goto_f

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9569
    :cond_32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PX;->A00(I)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 4

    .line 9570
    const/16 v2, 0x19

    const/16 v1, 0x10

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 9571
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_2e

    .line 9572
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 9573
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/4G;->A03(J)V

    .line 9574
    return v3

    .line 9575
    :pswitch_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 9576
    .local v0, "extraData":[Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v2, v1, v0

    check-cast v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4G;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 9577
    return v3

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method
