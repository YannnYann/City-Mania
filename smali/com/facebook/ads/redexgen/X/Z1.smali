###### Class com.facebook.ads.redexgen.X.Z1 (com.facebook.ads.redexgen.X.Z1)
.class public abstract Lcom/facebook/ads/redexgen/X/Z1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Z0;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1778
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MPeNosSnUXJxAx6mI3JWI0h5U74FiCA7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kjzKTQHhquf8JsGuO2HgzpcKI6DiQDEE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "m5I4zI5E0q02"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUKBz8RDpD2tsivFt0mwvILmBo8c01wG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r9xdFWGVNdOxwZSM6CeCqQnaWsJbT75e"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FmcAr6PO7GTJVn7ylBednreFezo6IsfE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BJIPVQbelm0s0d58H"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dHAk0OM7BTkqb0E6xESH1QwrQZAQsbTX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Mk;I)I
    .registers 4

    .line 78473
    packed-switch p1, :pswitch_data_42

    .line 78474
    const/4 v0, -0x1

    return v0

    .line 78475
    :pswitch_5
    add-int/lit8 v1, p1, -0x8

    const/16 v0, 0x100

    shl-int/2addr v0, v1

    return v0

    .line 78476
    :pswitch_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v0

    add-int/lit8 p1, v0, 0x1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, p0, v0

    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2b

    sget-object p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const-string v1, "yCmvVRHIiGzvLgjamsq686WyJ6KQL1S3"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    return p1

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 78477
    :pswitch_31
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 78478
    :pswitch_38
    add-int/lit8 v1, p1, -0x2

    const/16 v0, 0x240

    shl-int/2addr v0, v1

    return v0

    .line 78479
    :pswitch_3e
    const/16 v0, 0xc0

    return v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_31
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Z5;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78480
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->AK3()V

    .line 78481
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Lcom/facebook/ads/redexgen/X/Q9;->A4X(I)V

    .line 78482
    new-array v0, v4, [B

    .line 78483
    .local v1, "blockingStrategyByte":[B
    const/4 v3, 0x0

    invoke-interface {p0, v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Q9;->AI6([BII)V

    .line 78484
    aget-byte v0, v0, v3

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3c

    .line 78485
    .local v0, "isBlockSizeVariable":Z
    :goto_12
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A4X(I)V

    .line 78486
    if-eqz v4, :cond_3a

    const/4 v1, 0x7

    .line 78487
    .local v3, "maxUtf8SampleNumberSize":I
    :goto_19
    new-instance v2, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(I)V

    .line 78488
    .local v4, "scratch":Lcom/facebook/ads/redexgen/X/Mk;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v0

    invoke-static {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Yx;->A00(Lcom/facebook/ads/redexgen/X/Q9;[BII)I

    move-result v0

    .line 78489
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0e(I)V

    .line 78490
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->AK3()V

    .line 78491
    new-instance v1, Lcom/facebook/ads/redexgen/X/Z0;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Z0;-><init>()V

    .line 78492
    .local p0, "sampleNumberHolder":Lcom/facebook/ads/redexgen/X/Z0;
    invoke-static {v2, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/Z1;->A08(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;ZLcom/facebook/ads/redexgen/X/Z0;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 78493
    iget-wide v0, v1, Lcom/facebook/ads/redexgen/X/Z0;->A00:J

    return-wide v0

    .line 78494
    :cond_3a
    const/4 v1, 0x6

    goto :goto_19

    .line 78495
    :cond_3c
    const/4 v4, 0x0

    goto :goto_12

    .line 78496
    :cond_3e
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0
.end method

.method public static A02(ILcom/facebook/ads/redexgen/X/Z5;)Z
    .registers 4

    .line 78497
    const/4 v1, 0x1

    if-nez p0, :cond_4

    .line 78498
    return v1

    .line 78499
    :cond_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    if-ne p0, v0, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static A03(ILcom/facebook/ads/redexgen/X/Z5;)Z
    .registers 5

    .line 78500
    const/4 v0, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-gt p0, v0, :cond_c

    .line 78501
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    sub-int/2addr v0, v1

    if-ne p0, v0, :cond_b

    const/4 v2, 0x1

    :cond_b
    return v2

    .line 78502
    :cond_c
    const/16 v0, 0xa

    if-gt p0, v0, :cond_17

    .line 78503
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    .line 78504
    :cond_17
    return v2
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Mk;I)Z
    .registers 6

    .line 78505
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v3

    .line 78506
    .local v0, "crc":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v0

    .line 78507
    .local v1, "frameEndPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/N1;->A0J([BIII)I

    move-result v0

    .line 78508
    .local v2, "expectedCrc":I
    if-ne v3, v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;I)Z
    .registers 4

    .line 78509
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/Mk;I)I

    move-result p0

    .line 78510
    .local v0, "blockSizeSamples":I
    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    if-gt p0, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;I)Z
    .registers 10

    .line 78511
    iget v3, p1, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 78512
    .local v0, "expectedSampleRate":I
    const/4 v6, 0x1

    if-nez p2, :cond_6

    .line 78513
    return v6

    .line 78514
    :cond_6
    const/16 v0, 0xb

    const/4 v5, 0x0

    if-gt p2, v0, :cond_12

    .line 78515
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    if-ne p2, v0, :cond_10

    :goto_f
    return v6

    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    .line 78516
    :cond_12
    const/16 v4, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_52

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const-string v1, "5G0c2mDttQsYlpS1b"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4Phf51yFeYUp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne p2, v4, :cond_40

    .line 78517
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0I()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-ne v0, v3, :cond_3e

    :goto_3d
    return v6

    :cond_3e
    const/4 v6, 0x0

    goto :goto_3d

    .line 78518
    :cond_40
    const/16 v1, 0xe

    if-gt p2, v1, :cond_51

    .line 78519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0M()I

    move-result v0

    .line 78520
    .local v4, "sampleRate":I
    if-ne p2, v1, :cond_4c

    .line 78521
    mul-int/lit8 v0, v0, 0xa

    .line 78522
    :cond_4c
    if-ne v0, v3, :cond_4f

    :goto_4e
    return v6

    :cond_4f
    const/4 v6, 0x0

    goto :goto_4e

    .line 78523
    .end local v4    # "sampleRate":I
    :cond_51
    return v5

    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;ILcom/facebook/ads/redexgen/X/Z0;)Z
    .registers 19

    .line 78524
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A09()I

    move-result v5

    .line 78525
    .local v2, "frameStartPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0Q()J

    move-result-wide v13

    .line 78526
    .local v3, "frameHeaderBytes":J
    const/16 v6, 0x10

    ushr-long v3, v13, v6

    move/from16 v0, p2

    int-to-long v1, v0

    const/4 v12, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_15

    .line 78527
    return v12

    .line 78528
    :cond_15
    ushr-long v1, v13, v6

    const-wide/16 v10, 0x1

    and-long/2addr v1, v10

    const/4 v4, 0x1

    cmp-long v0, v1, v10

    if-nez v0, :cond_86

    const/4 v8, 0x1

    .line 78529
    .local v5, "isBlockSizeVariable":Z
    :goto_20
    const/16 v0, 0xc

    shr-long v0, v13, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v7, v0

    .line 78530
    .local v6, "blockSizeKey":I
    const/16 v0, 0x8

    shr-long v0, v13, v0

    and-long/2addr v0, v2

    long-to-int v6, v0

    .line 78531
    .local v13, "sampleRateKey":I
    const/4 v0, 0x4

    shr-long v0, v13, v0

    and-long/2addr v0, v2

    long-to-int v9, v0

    .line 78532
    .local v12, "channelAssignmentKey":I
    shr-long v3, v13, v4

    const-wide/16 v0, 0x7

    and-long/2addr v3, v0

    long-to-int v2, v3

    .line 78533
    .local p0, "bitsPerSampleKey":I
    and-long/2addr v13, v10

    cmp-long v0, v13, v10

    if-nez v0, :cond_84

    const/4 v1, 0x1

    .line 78534
    .local v9, "reservedBit":Z
    :goto_3f
    move-object/from16 v3, p1

    invoke-static {v9, v3}, Lcom/facebook/ads/redexgen/X/Z1;->A03(ILcom/facebook/ads/redexgen/X/Z5;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 78535
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/Z1;->A02(ILcom/facebook/ads/redexgen/X/Z5;)Z

    move-result v0

    if-eqz v0, :cond_83

    if-nez v1, :cond_83

    .line 78536
    move-object/from16 v0, p3

    invoke-static {p0, v3, v8, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A08(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;ZLcom/facebook/ads/redexgen/X/Z0;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 78537
    invoke-static {p0, v3, v7}, Lcom/facebook/ads/redexgen/X/Z1;->A05(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;I)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 78538
    invoke-static {p0, v3, v6}, Lcom/facebook/ads/redexgen/X/Z1;->A06(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;I)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 78539
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/Z1;->A04(Lcom/facebook/ads/redexgen/X/Mk;I)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_88

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const-string v1, "ZQIN96dVqGvu4yOtVUW9aMiWArn7PKuc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_83

    const/4 v12, 0x1

    .line 78540
    :cond_83
    return v12

    .line 78541
    :cond_84
    const/4 v1, 0x0

    goto :goto_3f

    .line 78542
    :cond_86
    const/4 v8, 0x0

    goto :goto_20

    :cond_88
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;ZLcom/facebook/ads/redexgen/X/Z0;)Z
    .registers 7

    .line 78543
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A0S()J

    move-result-wide v2

    .line 78544
    .local v0, "utf8Value":J
    if-eqz p2, :cond_7

    goto :goto_c
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_32

    :cond_7
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_d

    :goto_c
    move-wide v0, v2

    :goto_d
    iput-wide v0, p3, Lcom/facebook/ads/redexgen/X/Z0;->A00:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 78545
    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A00:[Ljava/lang/String;

    const-string v1, "O3SHgxsLwvy5FJDTB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "742QlVi73sOs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    .line 78546
    .end local v0    # "utf8Value":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_32
    const/4 v0, 0x0

    return v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Z5;ILcom/facebook/ads/redexgen/X/Z0;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78547
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A9L()J

    move-result-wide v1

    .line 78548
    .local v0, "originalPeekPosition":J
    const/4 v4, 0x2

    new-array v7, v4, [B

    .line 78549
    .local v3, "frameStartBytes":[B
    const/4 v6, 0x0

    invoke-interface {p0, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/Q9;->AI6([BII)V

    .line 78550
    aget-byte v0, v7, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 78551
    .local v5, "frameStart":I
    if-eq v3, p2, :cond_26

    .line 78552
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->AK3()V

    .line 78553
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A4X(I)V

    .line 78554
    return v6

    .line 78555
    :cond_26
    const/16 v0, 0x10

    new-instance v5, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(I)V

    .line 78556
    .local v6, "scratch":Lcom/facebook/ads/redexgen/X/Mk;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v0

    .line 78557
    invoke-static {v7, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78558
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mk;->A0l()[B

    move-result-object v3

    .line 78559
    const/16 v0, 0xe

    invoke-static {p0, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A00(Lcom/facebook/ads/redexgen/X/Q9;[BII)I

    move-result v0

    .line 78560
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Mk;->A0e(I)V

    .line 78561
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->AK3()V

    .line 78562
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A9Q()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A4X(I)V

    .line 78563
    invoke-static {v5, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Z1;->A07(Lcom/facebook/ads/redexgen/X/Mk;Lcom/facebook/ads/redexgen/X/Z5;ILcom/facebook/ads/redexgen/X/Z0;)Z

    move-result v0

    return v0
.end method
