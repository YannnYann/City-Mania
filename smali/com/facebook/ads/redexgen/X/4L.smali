###### Class com.facebook.ads.redexgen.X.C4L (com.facebook.ads.redexgen.X.4L)
.class public final Lcom/facebook/ads/redexgen/X/4L;
.super Lcom/facebook/ads/redexgen/X/9J;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9C;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9G;,
        Lcom/facebook/ads/redexgen/X/9H;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/util/regex/Pattern;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/NX;

.field public A04:Lcom/facebook/ads/redexgen/X/Wt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Wt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Ljava/io/InputStream;

.field public A06:Ljava/net/HttpURLConnection;

.field public A07:Z

.field public final A08:I

.field public final A09:I

.field public final A0A:Lcom/facebook/ads/redexgen/X/Nd;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Nd;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Z

.field public final A0E:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 163
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nOs3Tt6IrluNYDSOSLESBXSCSc7WyuF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gB1sPMl0EzjK9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jgjU8GI64F0Y9Lmze2t"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rHj9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SvLqmlanW48Wj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SfQAdFr8qtnlMOHcdEz777nqnLEWS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4l3q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CYEftcUDuniojuuZHfgRqMFva2dqwEDV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4L;->A09()V

    const/16 v2, 0x14b

    const/16 v1, 0x19

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4L;->A0H:Ljava/util/regex/Pattern;

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10464
    const/4 v1, 0x0

    const/16 v0, 0x1f40

    invoke-direct {p0, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Ljava/lang/String;II)V

    .line 10465
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10466
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/Nd;)V

    .line 10467
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/Nd;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10468
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/Nd;Lcom/facebook/ads/redexgen/X/Wt;Z)V

    .line 10469
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/Nd;Lcom/facebook/ads/redexgen/X/Wt;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/facebook/ads/redexgen/X/Nd;",
            "Lcom/facebook/ads/redexgen/X/Wt<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 10470
    .local p6, "contentTypePredicate":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Z)V

    .line 10471
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4L;->A0C:Ljava/lang/String;

    .line 10472
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4L;->A08:I

    .line 10473
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4L;->A09:I

    .line 10474
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/4L;->A0D:Z

    .line 10475
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/4L;->A0A:Lcom/facebook/ads/redexgen/X/Nd;

    .line 10476
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/4L;->A04:Lcom/facebook/ads/redexgen/X/Wt;

    .line 10477
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Nd;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A0B:Lcom/facebook/ads/redexgen/X/Nd;

    .line 10478
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/4L;->A0E:Z

    .line 10479
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/Nd;Lcom/facebook/ads/redexgen/X/Wt;ZLcom/facebook/ads/redexgen/X/NY;)V
    .registers 9

    .line 10480
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/Nd;Lcom/facebook/ads/redexgen/X/Wt;Z)V

    return-void
.end method

.method private A00([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10481
    if-nez p3, :cond_4

    .line 10482
    const/4 v0, 0x0

    return v0

    .line 10483
    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    const-wide/16 v5, -0x1

    const/4 v4, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1f

    .line 10484
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:J

    sub-long/2addr v0, v2

    .line 10485
    .local v0, "bytesRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_19

    .line 10486
    return v4

    .line 10487
    :cond_19
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 10488
    .end local v0    # "bytesRemaining":J
    :cond_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 10489
    .local v0, "read":I
    if-ne v5, v4, :cond_2e

    .line 10490
    return v4

    .line 10491
    :cond_2e
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_53

    sget-object v4, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "tOxuCLyEbNpkL"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "xWGiLZQxGBwvW"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:J

    .line 10492
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/9J;->A0F(I)V

    .line 10493
    return v5

    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Ljava/net/HttpURLConnection;)J
    .registers 13
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 10494
    const-wide/16 v1, -0x1

    .line 10495
    .local v0, "contentLength":J
    const/16 v4, 0x24

    const/16 v3, 0xe

    const/16 v0, 0x68

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10496
    .local v2, "contentLengthHeader":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v4, 0x147

    const/4 v3, 0x1

    const/16 v0, 0x1a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x3f

    const/16 v3, 0x15

    const/16 v0, 0x4c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_50

    .line 10497
    :try_start_29
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 10498
    goto :goto_50
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_2e

    .line 10499
    .local v3, "e":Ljava/lang/NumberFormatException;
    :catch_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc5

    const/16 v3, 0x1b

    const/16 v0, 0x78

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/MV;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 10500
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_50
    :goto_50
    const/16 v4, 0x32

    const/16 v3, 0xd

    const/16 v0, 0x5f

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10501
    .local v3, "contentRangeHeader":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 10502
    sget-object v0, Lcom/facebook/ads/redexgen/X/4L;->A0H:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 10503
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 10504
    const/4 v0, 0x2

    :try_start_71
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 10505
    .local v7, "contentLengthFromRange":J
    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-gez v0, :cond_8e

    .line 10506
    move-wide v1, v3

    goto :goto_eb

    .line 10507
    :cond_8e
    cmp-long v0, v1, v3

    if-eqz v0, :cond_eb

    .line 10508
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x78

    const/16 v5, 0x16

    const/4 v0, 0x5

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v9, 0x148

    const/4 v5, 0x3

    const/16 v0, 0x4b

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 10509
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_eb
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_c9} :catch_c9

    .line 10510
    .local v7, "e":Ljava/lang/NumberFormatException;
    :catch_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xe0

    const/16 v3, 0x1a

    const/16 v0, 0x5f

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/MV;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 10511
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_eb
    :goto_eb
    return-wide v1
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/NX;)Ljava/net/HttpURLConnection;
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10512
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10513
    .local v1, "url":Ljava/net/URL;
    iget v11, v12, Lcom/facebook/ads/redexgen/X/NX;->A01:I

    .line 10514
    .local v13, "httpMethod":I
    iget-object v10, v12, Lcom/facebook/ads/redexgen/X/NX;->A0A:[B

    .line 10515
    .local v14, "httpBody":[B
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    move-wide/from16 v28, v0

    .line 10516
    .local v9, "position":J
    iget-wide v15, v12, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    .line 10517
    .local v6, "length":J
    const/4 v9, 0x1

    invoke-virtual {v12, v9}, Lcom/facebook/ads/redexgen/X/NX;->A06(I)Z

    move-result v25

    .line 10518
    .local v16, "allowGzip":Z
    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/4L;->A0D:Z

    if-nez v0, :cond_5e

    iget-boolean v4, v13, Lcom/facebook/ads/redexgen/X/4L;->A0E:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3c

    :goto_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "WznkL24kjHwXXIHVlGm"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    if-nez v4, :cond_5e

    .line 10519
    const/16 v26, 0x1

    iget-object v4, v12, Lcom/facebook/ads/redexgen/X/NX;->A09:Ljava/util/Map;

    move-object/from16 v17, p0

    .end local v6    # "length":J
    .local v17, "length":J
    .end local v9    # "position":J
    .local v20, "position":J
    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6c

    goto :goto_36

    .line 10520
    .end local v17    # "length":J
    .end local v20    # "position":J
    .restart local v6    # "length":J
    .restart local v9    # "position":J
    :cond_5e
    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_89

    goto :goto_36

    :cond_6c
    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "5p2E"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "FBks"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    move-wide/from16 v21, v28

    move-wide/from16 v23, v15

    move-object/from16 v27, v4

    move-object/from16 v18, v2

    move/from16 v19, v11

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v27}, Lcom/facebook/ads/redexgen/X/4L;->A05(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_89
    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "2ueBBRbAbVBQq"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "VbFmIvYecAPj0"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 10521
    .end local v6    # "length":J
    .end local v9    # "position":J
    .restart local v17    # "length":J
    .restart local v20    # "position":J
    const/4 v0, 0x0

    .line 10522
    .end local v1    # "url":Ljava/net/URL;
    .local v0, "redirectCount":I
    .local v10, "url":Ljava/net/URL;
    :goto_96
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "redirectCount":I
    .local v9, "redirectCount":I
    const/16 v1, 0x14

    if-gt v0, v1, :cond_130

    .line 10523
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/NX;->A09:Ljava/util/Map;

    .line 10524
    const/16 v26, 0x0

    move-object/from16 v17, p0

    .end local v9    # "redirectCount":I
    .local v23, "redirectCount":I
    move-object v7, v2

    .end local v10    # "url":Ljava/net/URL;
    .local v24, "url":Ljava/net/URL;
    move-wide/from16 v21, v28

    move-wide/from16 v23, v15

    move-object/from16 v27, v0

    move-object/from16 v18, v2

    move/from16 v19, v11

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v27}, Lcom/facebook/ads/redexgen/X/4L;->A05(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 10525
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 10526
    .local v1, "responseCode":I
    const/16 v2, 0x8e

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10527
    .local v2, "location":Ljava/lang/String;
    const/16 v4, 0x12f

    const/16 v3, 0x12d

    const/16 v2, 0x12c

    const/16 v1, 0x12e

    if-eq v11, v9, :cond_d2

    const/4 v0, 0x3

    if-ne v11, v0, :cond_eb

    :cond_d2
    if-eq v6, v2, :cond_e2

    if-eq v6, v3, :cond_e2

    if-eq v6, v1, :cond_e2

    if-eq v6, v4, :cond_e2

    const/16 v0, 0x133

    if-eq v6, v0, :cond_e2

    const/16 v0, 0x134

    if-ne v6, v0, :cond_eb

    .line 10528
    .end local v24    # "url":Ljava/net/URL;
    .restart local v4
    :cond_e2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 10529
    invoke-direct {v13, v7, v5, v12}, Lcom/facebook/ads/redexgen/X/4L;->A07(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;)Ljava/net/URL;

    move-result-object v2

    .line 10530
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "responseCode":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v4
    .restart local v10    # "url":Ljava/net/URL;
    :goto_e9
    move v0, v8

    goto :goto_96

    .line 10531
    :cond_eb
    const/4 v0, 0x2

    if-ne v11, v0, :cond_12f

    if-eq v6, v2, :cond_f6

    if-eq v6, v3, :cond_f6

    if-eq v6, v1, :cond_f6

    if-ne v6, v4, :cond_12f

    .line 10532
    :cond_f6
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 10533
    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/4L;->A0E:Z

    if-eqz v0, :cond_127

    if-ne v6, v1, :cond_127

    const/4 v0, 0x1

    .line 10534
    .local v3, "shouldKeepPost":Z
    :goto_100
    if-nez v0, :cond_122

    .line 10535
    const/4 v11, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_129

    .line 10536
    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "CE74qWX2EDukT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rzNAupre8NrJB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v10, 0x0

    .line 10537
    .end local v24
    .local v4, "url":Ljava/net/URL;
    :cond_122
    invoke-direct {v13, v7, v5, v12}, Lcom/facebook/ads/redexgen/X/4L;->A07(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;)Ljava/net/URL;

    move-result-object v2

    .line 10538
    .end local v4    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    goto :goto_e9

    .line 10539
    :cond_127
    const/4 v0, 0x0

    goto :goto_100

    :cond_129
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10540
    .end local v24
    .restart local v4    # "url":Ljava/net/URL;
    :cond_12f
    return-object v14

    .line 10541
    .end local v23    # "redirectCount":I
    .restart local v9    # "redirectCount":I
    .end local v9    # "redirectCount":I
    .restart local v23    # "redirectCount":I
    :cond_130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb1

    const/16 v1, 0x14

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v23    # "redirectCount":I
    .local v3, "redirectCount":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/NoRouteToHostException;

    invoke-direct {v2, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v2, v12, v1, v9}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0
.end method

.method private final A04(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10542
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private A05(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 17
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10543
    .local p14, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, p0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 10544
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_ef

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "OxfBNhcm3vCNP1oRQr9i0V4XObkL5ACx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/4L;->A06(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 10545
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :goto_2b
    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A08:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10546
    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A09:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10547
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10548
    .local v4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A0A:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_47

    .line 10549
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A0A:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10550
    :cond_47
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A0B:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10551
    move-object/from16 v0, p10

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10552
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10553
    .local p1, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10554
    .end local p1    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5d

    .line 10555
    :cond_79
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4L;->A04(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_2b

    .line 10556
    :cond_7e
    invoke-static {p4, p5, p6, p7}, Lcom/facebook/ads/redexgen/X/Ne;->A03(JJ)Ljava/lang/String;

    move-result-object v5

    .line 10557
    .local p0, "rangeHeader":Ljava/lang/String;
    if-eqz v5, :cond_90

    .line 10558
    const/16 v2, 0xac

    const/4 v1, 0x5

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10559
    :cond_90
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A0C:Ljava/lang/String;

    if-eqz v0, :cond_a3

    .line 10560
    const/16 v2, 0x13d

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A0C:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10561
    :cond_a3
    if-eqz p8, :cond_e4

    const/16 v2, 0x1ea

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v4

    :goto_ae
    const/4 v2, 0x5

    const/16 v1, 0xf

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10562
    invoke-virtual {v3, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 10563
    if-eqz p3, :cond_e2

    const/4 v0, 0x1

    :goto_c0
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 10564
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/NX;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10565
    if-eqz p3, :cond_de

    .line 10566
    array-length v0, p3

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 10567
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 10568
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 10569
    .local p2, "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 10570
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 10571
    .end local p2    # "os":Ljava/io/OutputStream;
    :goto_dd
    return-object v3

    .line 10572
    :cond_de
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_dd

    .line 10573
    :cond_e2
    const/4 v0, 0x0

    goto :goto_c0

    .line 10574
    :cond_e4
    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_ae

    :cond_ef
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A06(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10575
    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private A07(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;)Ljava/net/URL;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T6;
        }
    .end annotation

    .line 10576
    const/4 v4, 0x1

    const/16 v3, 0x7d1

    if-eqz p2, :cond_a4

    .line 10577
    :try_start_5
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_a} :catch_9d

    .line 10578
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 10579
    .local v3, "protocol":Ljava/lang/String;
    const/16 v2, 0x1f2

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v2, 0x1ee

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 10580
    :cond_2c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A0D:Z

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 10581
    :cond_3a
    return-object v5

    .line 10582
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x24

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10583
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10584
    :cond_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11e

    const/16 v1, 0x1f

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10585
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    :catch_9d
    move-exception v1

    .line 10586
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10587
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_a4
    const/16 v2, 0x96

    const/16 v1, 0x16

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0
.end method

.method private A08()V
    .registers 6

    .line 10588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_25

    .line 10589
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_22
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_a

    .line 10590
    :catch_a
    move-exception v4

    .line 10591
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x3f

    const/16 v1, 0x15

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfa

    const/16 v1, 0x24

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/MV;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10592
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    .line 10593
    :cond_25
    return-void
.end method

.method public static A09()V
    .registers 1

    const/16 v0, 0x213

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4L;->A0F:[B

    return-void

    :array_a
    .array-data 1
        0x42t
        -0x6at
        -0x6ft
        0x42t
        -0x77t
        -0x72t
        -0x50t
        -0x50t
        -0x4et
        -0x43t
        -0x3ft
        0x7at
        -0x6et
        -0x45t
        -0x50t
        -0x44t
        -0x4ft
        -0x4at
        -0x45t
        -0x4ct
        0x79t
        -0x5bt
        -0x5ct
        -0x56t
        -0x65t
        -0x5ct
        -0x56t
        0x63t
        0x7bt
        -0x5ct
        -0x67t
        -0x5bt
        -0x66t
        -0x61t
        -0x5ct
        -0x63t
        -0x3dt
        -0x11t
        -0x12t
        -0xct
        -0x1bt
        -0x12t
        -0xct
        -0x53t
        -0x34t
        -0x1bt
        -0x12t
        -0x19t
        -0xct
        -0x18t
        -0x46t
        -0x1at
        -0x1bt
        -0x15t
        -0x24t
        -0x1bt
        -0x15t
        -0x5ct
        -0x37t
        -0x28t
        -0x1bt
        -0x22t
        -0x24t
        -0x58t
        -0x37t
        -0x36t
        -0x3bt
        -0x27t
        -0x30t
        -0x28t
        -0x54t
        -0x28t
        -0x28t
        -0x2ct
        -0x58t
        -0x3bt
        -0x28t
        -0x3bt
        -0x49t
        -0x2dt
        -0x27t
        -0x2at
        -0x39t
        -0x37t
        -0x50t
        -0x2bt
        -0x21t
        -0x33t
        -0x28t
        -0x28t
        -0x25t
        -0x1dt
        -0x2ft
        -0x30t
        -0x74t
        -0x31t
        -0x22t
        -0x25t
        -0x21t
        -0x21t
        -0x67t
        -0x24t
        -0x22t
        -0x25t
        -0x20t
        -0x25t
        -0x31t
        -0x25t
        -0x28t
        -0x74t
        -0x22t
        -0x2ft
        -0x30t
        -0x2bt
        -0x22t
        -0x2ft
        -0x31t
        -0x20t
        -0x74t
        -0x6ct
        0x66t
        -0x75t
        -0x80t
        -0x74t
        -0x75t
        -0x70t
        -0x7at
        -0x70t
        -0x6ft
        -0x7et
        -0x75t
        -0x6ft
        0x3dt
        -0x7bt
        -0x7et
        0x7et
        -0x7ft
        -0x7et
        -0x71t
        -0x70t
        0x3dt
        0x78t
        -0x68t
        -0x45t
        -0x51t
        -0x53t
        -0x40t
        -0x4bt
        -0x45t
        -0x46t
        -0x57t
        -0x30t
        -0x39t
        -0x39t
        0x7bt
        -0x39t
        -0x36t
        -0x42t
        -0x44t
        -0x31t
        -0x3ct
        -0x36t
        -0x37t
        0x7bt
        -0x33t
        -0x40t
        -0x41t
        -0x3ct
        -0x33t
        -0x40t
        -0x42t
        -0x31t
        -0x5ft
        -0x50t
        -0x43t
        -0x4at
        -0x4ct
        -0x23t
        -0x8t
        -0x8t
        -0x57t
        -0xat
        -0x16t
        -0x9t
        0x2t
        -0x57t
        -0x5t
        -0x12t
        -0x13t
        -0xet
        -0x5t
        -0x12t
        -0x14t
        -0x3t
        -0x4t
        -0x3dt
        -0x57t
        -0x1bt
        -0x2t
        -0xbt
        0x8t
        0x0t
        -0xbt
        -0xdt
        0x4t
        -0xbt
        -0xct
        -0x50t
        -0x2dt
        -0x1t
        -0x2t
        0x4t
        -0xbt
        -0x2t
        0x4t
        -0x43t
        -0x24t
        -0xbt
        -0x2t
        -0x9t
        0x4t
        -0x8t
        -0x50t
        -0x15t
        -0x34t
        -0x1bt
        -0x24t
        -0x11t
        -0x19t
        -0x24t
        -0x26t
        -0x15t
        -0x24t
        -0x25t
        -0x69t
        -0x46t
        -0x1at
        -0x1bt
        -0x15t
        -0x24t
        -0x1bt
        -0x15t
        -0x5ct
        -0x37t
        -0x28t
        -0x1bt
        -0x22t
        -0x24t
        -0x69t
        -0x2et
        0x7ft
        -0x68t
        -0x71t
        -0x5et
        -0x66t
        -0x71t
        -0x73t
        -0x62t
        -0x71t
        -0x72t
        0x4at
        -0x71t
        -0x64t
        -0x64t
        -0x67t
        -0x64t
        0x4at
        -0x5ft
        -0x6et
        -0x6dt
        -0x6at
        -0x71t
        0x4at
        -0x72t
        -0x6dt
        -0x63t
        -0x73t
        -0x67t
        -0x68t
        -0x68t
        -0x71t
        -0x73t
        -0x62t
        -0x6dt
        -0x68t
        -0x6ft
        0x7et
        -0x69t
        -0x64t
        -0x62t
        -0x67t
        -0x67t
        -0x68t
        -0x65t
        -0x63t
        -0x72t
        -0x73t
        0x49t
        -0x67t
        -0x65t
        -0x68t
        -0x63t
        -0x68t
        -0x74t
        -0x68t
        -0x6bt
        0x49t
        -0x65t
        -0x72t
        -0x73t
        -0x6et
        -0x65t
        -0x72t
        -0x74t
        -0x63t
        0x63t
        0x49t
        -0x65t
        -0x47t
        -0x55t
        -0x48t
        0x73t
        -0x79t
        -0x53t
        -0x55t
        -0x4ct
        -0x46t
        -0x71t
        -0x40t
        -0x7dt
        -0x42t
        -0x71t
        -0x6dt
        -0x56t
        -0x5bt
        -0x6at
        -0x5ct
        0x51t
        0x59t
        -0x73t
        -0x6bt
        0x5ct
        0x5at
        0x5et
        0x59t
        -0x73t
        -0x6bt
        0x5ct
        0x5at
        0x60t
        0x59t
        -0x73t
        -0x6bt
        0x5ct
        0x5at
        0x55t
        -0x3et
        -0x32t
        -0x34t
        -0x73t
        -0x40t
        -0x33t
        -0x3dt
        -0x2ft
        -0x32t
        -0x38t
        -0x3dt
        -0x73t
        -0x32t
        -0x36t
        -0x39t
        -0x2dt
        -0x2dt
        -0x31t
        -0x73t
        -0x38t
        -0x33t
        -0x2dt
        -0x3ct
        -0x2ft
        -0x33t
        -0x40t
        -0x35t
        -0x73t
        -0x39t
        -0x2dt
        -0x2dt
        -0x31t
        -0x73t
        -0x59t
        -0x2dt
        -0x2dt
        -0x31t
        -0x4dt
        -0x2ft
        -0x40t
        -0x33t
        -0x2et
        -0x31t
        -0x32t
        -0x2ft
        -0x2dt
        -0x7dt
        -0x5et
        -0x39t
        -0x2ct
        -0x33t
        -0x36t
        -0x3ct
        -0x3dt
        -0x58t
        -0x33t
        -0x31t
        -0x2ct
        -0x2dt
        -0x4et
        -0x2dt
        -0x2ft
        -0x3ct
        -0x40t
        -0x34t
        -0x68t
        -0x5ct
        -0x5et
        0x63t
        -0x6at
        -0x5dt
        -0x67t
        -0x59t
        -0x5ct
        -0x62t
        -0x67t
        0x63t
        -0x5ct
        -0x60t
        -0x63t
        -0x57t
        -0x57t
        -0x5bt
        0x63t
        -0x62t
        -0x5dt
        -0x57t
        -0x66t
        -0x59t
        -0x5dt
        -0x6at
        -0x5ft
        0x63t
        -0x63t
        -0x57t
        -0x57t
        -0x5bt
        0x63t
        0x7dt
        -0x57t
        -0x57t
        -0x5bt
        -0x77t
        -0x59t
        -0x6at
        -0x5dt
        -0x58t
        -0x5bt
        -0x5ct
        -0x59t
        -0x57t
        0x59t
        0x7bt
        -0x62t
        -0x53t
        -0x66t
        -0x67t
        -0x7ft
        -0x66t
        -0x5dt
        -0x64t
        -0x57t
        -0x63t
        0x7et
        -0x5dt
        -0x5bt
        -0x56t
        -0x57t
        -0x78t
        -0x57t
        -0x59t
        -0x66t
        -0x6at
        -0x5et
        -0x2bt
        -0x18t
        -0x29t
        -0x22t
        -0xdt
        -0x1t
        -0x1t
        -0x5t
        -0x31t
        -0x25t
        -0x25t
        -0x29t
        -0x26t
        -0x40t
        -0x45t
        -0x44t
        -0x3bt
        -0x35t
        -0x40t
        -0x35t
        -0x30t
        -0x58t
        -0x5ft
        -0x68t
        -0x55t
        -0x5dt
        -0x68t
        -0x6at
        -0x59t
        -0x68t
        -0x69t
        0x78t
        -0x5ft
        -0x69t
        -0x7et
        -0x67t
        0x7ct
        -0x5ft
        -0x5dt
        -0x58t
        -0x59t
    .end array-data
.end method

.method private A0A(JLcom/facebook/ads/redexgen/X/NX;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10594
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-nez v0, :cond_7

    .line 10595
    return-void

    .line 10596
    :cond_7
    const/16 v0, 0x1000

    new-array v4, v0, [B

    .line 10597
    .local v2, "skipBuffer":[B
    :goto_b
    cmp-long v0, p1, v5

    if-lez v0, :cond_4c

    .line 10598
    array-length v0, v4

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 10599
    .local v4, "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 10600
    .local v3, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3f

    .line 10601
    const/4 v0, -0x1

    if-eq v2, v0, :cond_37

    .line 10602
    int-to-long v0, v2

    sub-long/2addr p1, v0

    .line 10603
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/9J;->A0F(I)V

    .line 10604
    .end local v3    # "read":I
    .end local v4    # "readLength":I
    goto :goto_b

    .line 10605
    .restart local v3    # "read":I
    .restart local v4    # "readLength":I
    :cond_37
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, p3, v1, v3}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10606
    :cond_3f
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v2, p3, v1, v3}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10607
    .end local v3    # "read":I
    .end local v4    # "readLength":I
    :cond_4c
    return-void
.end method

.method public static A0B(Ljava/net/HttpURLConnection;J)V
    .registers 7

    .line 10608
    if-eqz p0, :cond_29

    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_29

    sget v3, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_94

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "oYk1pyLAkrhbV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OYwXHLGm308d0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x14

    if-le v3, v0, :cond_2a

    .line 10609
    :cond_29
    return-void

    .line 10610
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 10611
    .local v0, "inputStream":Ljava/io/InputStream;
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_3c

    .line 10612
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_43

    .line 10613
    return-void

    .line 10614
    :cond_3c
    const-wide/16 v1, 0x800

    cmp-long v0, p1, v1

    if-gtz v0, :cond_43

    .line 10615
    return-void

    .line 10616
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 10617
    .local v1, "className":Ljava/lang/String;
    const/16 v2, 0x164

    const/16 v1, 0x41

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const/16 v2, 0x1a5

    const/16 v1, 0x45

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 10618
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 10619
    :cond_6b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 10620
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/16 v2, 0x1ff

    const/16 v1, 0x14

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10621
    .local v3, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 10622
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_93} :catch_93

    .line 10623
    :catch_93
    :cond_93
    return-void

    :cond_94
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Ljava/net/HttpURLConnection;)Z
    .registers 4

    .line 10624
    const/16 v2, 0x14

    const/16 v1, 0x10

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10625
    .local v0, "contentEncoding":Ljava/lang/String;
    const/16 v2, 0x1ea

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A0I(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 10626
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10627
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A0B:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nd;->A01(Ljava/lang/String;Ljava/lang/String;)V

    .line 10629
    return-void
.end method

.method public final A9W()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 10630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    .line 10631
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vq;->A04()Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v0

    return-object v0

    .line 10632
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9G;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final AA2()Landroid/net/Uri;
    .registers 2

    .line 10633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 17
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T6;
        }
    .end annotation

    .line 10634
    move-object v6, p0

    move-object/from16 v13, p1

    iput-object v13, v6, Lcom/facebook/ads/redexgen/X/4L;->A03:Lcom/facebook/ads/redexgen/X/NX;

    .line 10635
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/4L;->A01:J

    .line 10636
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    .line 10637
    invoke-virtual {p0, v13}, Lcom/facebook/ads/redexgen/X/9J;->A0G(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10638
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/NX;->A07:Lcom/facebook/ads/redexgen/X/e7;

    if-eqz v0, :cond_3a

    .line 10639
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/NX;->A07:Lcom/facebook/ads/redexgen/X/e7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/e7;->A0P:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10640
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A0I(Ljava/lang/String;Ljava/lang/String;)V

    .line 10641
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1e

    .line 10642
    :cond_3a
    :try_start_3a
    invoke-direct {p0, v13}, Lcom/facebook/ads/redexgen/X/4L;->A03(Lcom/facebook/ads/redexgen/X/NX;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    .line 10643
    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    .line 10644
    .local v10, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    .line 10645
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_1a3

    .line 10646
    .local v4, "responseMessage":Ljava/lang/String;
    iget v5, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    const/16 v4, 0x32

    const/16 v1, 0xd

    const/16 v0, 0x5f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc8

    const-wide/16 v0, -0x1

    if-lt v5, v9, :cond_64

    iget v5, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    const/16 v4, 0x12b

    if-le v5, v4, :cond_b6

    .line 10647
    .end local v0
    .end local v2
    .end local v5
    .end local v7
    .end local v8
    :cond_64
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    .line 10648
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v2, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    const/16 v5, 0x1a0

    if-ne v2, v5, :cond_8e

    .line 10649
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Ljava/lang/String;)J

    move-result-wide v8

    .line 10650
    .local v6, "documentSize":J
    iget-wide v2, v13, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v4, v2, v8

    if-nez v4, :cond_8e

    .line 10651
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    .line 10652
    invoke-virtual {p0, v13}, Lcom/facebook/ads/redexgen/X/9J;->A0H(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10653
    iget-wide v3, v13, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    cmp-long v2, v3, v0

    if-eqz v2, :cond_8b

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    :goto_8a
    return-wide v0

    :cond_8b
    const-wide/16 v0, 0x0

    goto :goto_8a

    .line 10654
    .end local v6    # "documentSize":J
    :cond_8e
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 10655
    .local v11, "errorStream":Ljava/io/InputStream;
    if-eqz v0, :cond_99

    :try_start_94
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A1F(Ljava/io/InputStream;)[B

    move-result-object v14

    goto :goto_9e

    :cond_99
    sget-object v14, Lcom/facebook/ads/redexgen/X/N1;->A07:[B

    goto :goto_9e
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9c} :catch_9c

    .line 10656
    .end local v0
    .local v0, "e":Ljava/io/IOException;
    :catch_9c
    sget-object v14, Lcom/facebook/ads/redexgen/X/N1;->A07:[B

    .line 10657
    .local v0, "errorResponseBody":[B
    :goto_9e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10658
    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    if-ne v0, v5, :cond_b4

    .line 10659
    const/16 v0, 0x7d8

    new-instance v11, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v11, v0}, Lcom/facebook/ads/redexgen/X/NQ;-><init>(I)V

    .line 10660
    .local v5, "cause":Ljava/io/IOException;
    :goto_ac
    new-instance v8, Lcom/facebook/ads/redexgen/X/9D;

    iget v9, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/9D;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NX;[B)V

    throw v8

    .line 10661
    :cond_b4
    const/4 v11, 0x0

    goto :goto_ac

    .line 10662
    :cond_b6
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 10663
    .local v8, "contentType":Ljava/lang/String;
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/4L;->A04:Lcom/facebook/ads/redexgen/X/Wt;

    if-eqz v4, :cond_c6

    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/4L;->A04:Lcom/facebook/ads/redexgen/X/Wt;

    invoke-interface {v4, v5}, Lcom/facebook/ads/redexgen/X/Wt;->A4d(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 10664
    :cond_c6
    iget v4, v6, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    if-ne v4, v9, :cond_d2

    iget-wide v4, v13, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v9, v4, v2

    if-eqz v9, :cond_d2

    iget-wide v2, v13, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    .line 10665
    .local v2, "bytesToSkip":J
    .local v0, "isChunkedTransfer":Z
    :cond_d2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/4L;->A0C(Ljava/net/HttpURLConnection;)Z

    move-result v11

    .line 10666
    .local v7, "isCompressed":Z
    if-nez v11, :cond_10a

    .line 10667
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/4L;->A01(Ljava/net/HttpURLConnection;)J

    move-result-wide v9

    .line 10668
    .local v13, "contentLength":J
    cmp-long v4, v9, v0

    .line 10669
    iget-wide v4, v13, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    cmp-long v9, v4, v0

    if-eqz v9, :cond_eb

    .line 10670
    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    .line 10671
    .end local v0    # "isChunkedTransfer":Z
    .local v5, "isChunkedTransfer":Z
    :goto_e8
    const/16 v4, 0x7d0

    goto :goto_10f

    .line 10672
    :cond_eb
    const/16 v9, 0x24

    const/16 v5, 0xe

    const/16 v4, 0x68

    invoke-static {v9, v5, v4}, Lcom/facebook/ads/redexgen/X/4L;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10673
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10674
    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Ne;->A01(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 10675
    .end local v13    # "contentLength":J
    .local v5, "contentLength":J
    cmp-long v4, v8, v0

    if-eqz v4, :cond_107

    sub-long v0, v8, v2

    :cond_107
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    goto :goto_e8

    .line 10676
    :cond_10a
    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    goto :goto_e8

    .line 10677
    :goto_10f
    :try_start_10f
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    .line 10678
    if-eqz v11, :cond_120

    .line 10679
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_120} :catch_18f

    .line 10680
    :cond_120
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    sget-object v5, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10681
    :cond_13b
    sget-object v5, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "vOmLJzPKHhABJ0mtpNg"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-virtual {p0, v13}, Lcom/facebook/ads/redexgen/X/9J;->A0H(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10682
    :try_start_145
    invoke-direct {v6, v2, v3, v13}, Lcom/facebook/ads/redexgen/X/4L;->A0A(JLcom/facebook/ads/redexgen/X/NX;)V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_14b

    .line 10683
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    return-wide v0

    .line 10684
    :catch_14b
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_174

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "6oIj3ukvUJNim"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "P3GSGxSKjKm7O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 10685
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10686
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/T6;

    if-eqz v0, :cond_188

    .line 10687
    :goto_171
    check-cast v3, Lcom/facebook/ads/redexgen/X/T6;

    throw v3

    :cond_174
    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "GCpS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "NWfr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 10688
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10689
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/T6;

    if-eqz v0, :cond_188

    goto :goto_171

    .line 10690
    :cond_188
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v3, v13, v4, v1}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10691
    .end local v0    # "e":Ljava/io/IOException;
    :catch_18f
    move-exception v2

    .line 10692
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10693
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v2, v13, v4, v1}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0

    .line 10694
    :cond_19a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10695
    new-instance v0, Lcom/facebook/ads/redexgen/X/9E;

    invoke-direct {v0, v5, v13}, Lcom/facebook/ads/redexgen/X/9E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;)V

    throw v0

    .line 10696
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "responseMessage":Ljava/lang/String;
    .end local v5    # "contentLength":J
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "errorStream":Ljava/io/InputStream;
    .end local v13
    :catch_1a3
    move-exception v1

    .line 10697
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10698
    const/4 v0, 0x1

    invoke-static {v1, v13, v0}, Lcom/facebook/ads/redexgen/X/T6;->A04(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;I)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T6;
        }
    .end annotation

    .line 10699
    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    .line 10700
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v7, :cond_30

    .line 10701
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-nez v0, :cond_14

    .line 10702
    .local v3, "bytesRemaining":J
    :goto_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A06:Ljava/net/HttpURLConnection;

    invoke-static {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/4L;->A0B(Ljava/net/HttpURLConnection;J)V

    goto :goto_1a

    .line 10703
    :cond_14
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:J

    sub-long/2addr v4, v0

    goto :goto_e
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_60

    .line 10704
    :goto_1a
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_30
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_60

    .line 10705
    :catch_1e
    move-exception v5

    .line 10706
    :try_start_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Lcom/facebook/ads/redexgen/X/NX;

    .line 10707
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/NX;

    const/16 v2, 0x7d0

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    throw v0
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_60

    .line 10708
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "bytesRemaining":J
    .end local v5
    :cond_30
    :goto_30
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    .line 10709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    .line 10710
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_5a

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "IKlqhotxoqxb0sXFSHQCNyXwMGh2A"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "2ShhlgZ2mV8xyohXA7l4PYfcRFl2zSH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_59

    .line 10711
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    .line 10712
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10713
    :cond_59
    return-void

    :cond_5a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10714
    :catchall_60
    move-exception v4

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/4L;->A05:Ljava/io/InputStream;

    .line 10715
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4L;->A08()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_ab

    .line 10716
    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "u1XyGuwIlt9s0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Vm5En7AKzwSAn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    if-eqz v0, :cond_9a

    .line 10717
    :goto_88
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_9b

    .line 10718
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10719
    :cond_9a
    :goto_9a
    throw v4

    .line 10720
    :cond_9b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "UKl3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "R8V0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    goto :goto_9a

    .line 10721
    :cond_ab
    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A0G:[Ljava/lang/String;

    const-string v1, "dSIHxMwnwlCy6xxTpfV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A07:Z

    if-eqz v0, :cond_9a

    goto :goto_88
.end method

.method public final read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T6;
        }
    .end annotation

    .line 10722
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4L;->A00([BII)I

    move-result v0

    return v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    .line 10723
    :catch_5
    move-exception v2

    .line 10724
    .local v0, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Lcom/facebook/ads/redexgen/X/NX;

    .line 10725
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/NX;

    .line 10726
    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A04(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;I)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C9D (com.facebook.ads.redexgen.X.9D)
.class public Lcom/facebook/ads/redexgen/X/9D;
.super Lcom/facebook/ads/redexgen/X/T6;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidResponseCodeException"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 397
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JAli2j9y0ZzlqAjJFPwPKYRltVStFftu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S0rVsuizIrf2heiHRtUtxs6hnvBHx2yC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V707ztTXfPVWZsi3kHmUKha67juacPtk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XaW4WsxvrFpxNTQkFH5Kkth2dot66Zv2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OIMHJQtaFdaxpqliHbyA1Kd6zuQ2ai9P"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pb95JTSnUmF3oisMmeyIM8RvAEJFnA5X"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bvEGhFfWugRaXpJ59hdzI5tWoAjq2MRi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0rvajko4jU3vYPDzBOunjuajj4833"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9D;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9D;->A01()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NX;[B)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/facebook/ads/redexgen/X/NX;",
            "[B)V"
        }
    .end annotation

    .line 28439
    .local p5, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/NX;II)V

    .line 28440
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:I

    .line 28441
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9D;->A01:Ljava/lang/String;

    .line 28442
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Ljava/util/Map;

    .line 28443
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/9D;->A03:[B

    .line 28444
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

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
    .registers 4

    const/16 v0, 0xf

    new-array v3, v0, [B

    fill-array-data v3, :array_2a

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_24

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A05:[Ljava/lang/String;

    const-string v1, "47ds8857xceN7QB7wgGve0GkuxWCJwMo"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/9D;->A04:[B

    return-void

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_2a
    .array-data 1
        0x30t
        0x7t
        0x11t
        0x12t
        0xdt
        0xct
        0x11t
        0x7t
        0x42t
        0x1t
        0xdt
        0x6t
        0x7t
        0x58t
        0x42t
    .end array-data
.end method

###### Class com.facebook.ads.redexgen.X.C9E (com.facebook.ads.redexgen.X.9E)
.class public final Lcom/facebook/ads/redexgen/X/9E;
.super Lcom/facebook/ads/redexgen/X/T6;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidContentTypeException"
.end annotation


# static fields
.field public static A01:[B = null

.field public static A02:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 398
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CRchbvH5GlFN7NYNx7RPIbuSr5KZs1AF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b4Pw3jsalXQqMIPt2e8fSjKdsWbkTvb4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xR6rBLuzucYoGtgsM7XUfClL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zjLPl8SGISPPGo15aH65bQ72foMyVTPe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uz7EEryteENlNTIvmJNBWHQiA57trEq4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Vt3fAwNpFEhpFeljlPmtktQK8ss7Jvuu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "teDlErPiqg6k4O59eAmaFeOZTAY5oa4h"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xx3dbKmP8ijSvrB0PPXqUNxrFHCT5dy6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9E;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9E;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;)V
    .registers 7

    .line 28445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9E;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x7d3

    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NX;II)V

    .line 28446
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9E;->A00:Ljava/lang/String;

    .line 28447
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9E;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

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
    .registers 4

    const/16 v0, 0x16

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/9E;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/9E;->A02:[Ljava/lang/String;

    const-string v1, "rYaYEGGZIb5dmyzxE5shd4OJdCcNUYYi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vbriEjSEvYwddni4Bl8IplFMswspWEIE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_2c

    sput-object v3, Lcom/facebook/ads/redexgen/X/9E;->A01:[B

    return-void

    nop

    :array_2c
    .array-data 1
        0x6ct
        0x4bt
        0x53t
        0x44t
        0x49t
        0x4ct
        0x41t
        0x5t
        0x46t
        0x4at
        0x4bt
        0x51t
        0x40t
        0x4bt
        0x51t
        0x5t
        0x51t
        0x5ct
        0x55t
        0x40t
        0x1ft
        0x5t
    .end array-data
.end method
