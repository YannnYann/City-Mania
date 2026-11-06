###### Class com.facebook.ads.redexgen.X.YP (com.facebook.ads.redexgen.X.YP)
.class public abstract Lcom/facebook/ads/redexgen/X/YP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1742
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "s22ei7jEKUY9529lCkJcZ4gJOWEEq6sw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "duV9wRl87qqwtjVxV5Z0l273mrzPB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wMMC0QDni77iJPSC6cwStA4u0doNggjm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8ULfkGAtnNjfoAXaBKqRxFGDDrSAPchC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VlaoSfTQE6wEJso3tLAiebs4KdKOrk2p"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qxQGNomuCID4prBZS5y4k4PWwIkvdajS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "T0faEiDKlZDlpeu3iXR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YP;->A0L()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/ads/redexgen/X/YP;->A02:[Ljava/lang/Object;

    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .registers 8

    .line 77481
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A01(Ljava/lang/String;I)I
    .registers 7

    .line 77482
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 77483
    .local v1, "formatLen":I
    const/4 v3, 0x0

    .line 77484
    .local v2, "foundDoublePercent":Z
    :goto_5
    if-ge p1, v4, :cond_28

    .line 77485
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77486
    .local v3, "ch":C
    const/16 v2, 0x25

    if-ne v0, v2, :cond_22

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/YP;->A02(Ljava/lang/String;I)I

    move-result v1

    const/16 v0, -0x64

    if-ne v1, v0, :cond_22

    .line 77487
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_25

    .line 77488
    add-int/lit8 p1, p1, 0x1

    .line 77489
    const/4 v3, 0x1

    .line 77490
    .end local v3    # "ch":C
    :cond_22
    add-int/lit8 p1, p1, 0x1

    .line 77491
    goto :goto_5

    .line 77492
    :cond_25
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 77493
    :cond_28
    if-eqz v3, :cond_2d

    const/16 v0, -0xc9

    :goto_2c
    return v0

    :cond_2d
    const/16 v0, -0xc8

    goto :goto_2c
.end method

.method public static A02(Ljava/lang/String;I)I
    .registers 4

    .line 77494
    add-int/lit8 v1, p1, 0x1

    .line 77495
    .local v0, "nextIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1b

    .line 77496
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 77497
    .local v1, "nextChar":C
    const/16 v0, 0x73

    if-eq v1, v0, :cond_18

    const/16 v0, 0x64

    if-eq v1, v0, :cond_18

    const/16 v0, 0x25

    if-ne v1, v0, :cond_1b

    .line 77498
    :cond_18
    const/16 v0, -0x64

    return v0

    .line 77499
    .end local v1    # "nextChar":C
    :cond_1b
    const/16 v0, -0x65

    return v0
.end method

.method public static A03(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77500
    packed-switch p1, :pswitch_data_3c

    .line 77501
    invoke-static {p0, p6}, Lcom/facebook/ads/redexgen/X/YP;->A08(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 77502
    :pswitch_8
    invoke-static {p0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/YP;->A07(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 77503
    :pswitch_d
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/YP;->A06(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 77504
    :pswitch_12
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/YP;->A05(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 77505
    :pswitch_17
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/YP;->A04(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 77506
    :pswitch_1c
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YP;->A00(Ljava/lang/String;)I

    move-result p3

    sget-object p1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 p0, 0x6

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p0, 0x18

    if-eq p1, p0, :cond_35

    sget-object p2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string p1, "WehvTxaaI3lXA2zhZ2U"

    const/4 p0, 0x7

    aput-object p1, p2, p0

    return p3

    :cond_35
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 9
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77507
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77508
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77509
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77510
    const/4 v0, 0x0

    const/4 v2, 0x4

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A08(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77511
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/YP;->A0F(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A09(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .registers 8
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77512
    const/4 v5, 0x0

    .line 77513
    .local v0, "length":I
    if-nez p1, :cond_37

    .line 77514
    const/16 v4, 0x2f

    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_19

    :goto_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 77515
    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "quS3FtdEJc8pIw7YWoimB41t6YmKEhJj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9yujm8fM67Qfoyy5IiJhg4Ysq7tAQxkw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x20

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0G(III)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_33

    .line 77516
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_3f

    .line 77517
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 77518
    :cond_37
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4e

    .line 77519
    if-nez p0, :cond_44

    .line 77520
    add-int/lit8 v5, v5, 0xb

    .line 77521
    :goto_3f
    if-nez p0, :cond_42

    :goto_41
    return v5

    :cond_42
    const/4 v5, -0x3

    goto :goto_41

    .line 77522
    :cond_44
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 77523
    :cond_4e
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7d

    .line 77524
    if-nez p0, :cond_57

    .line 77525
    add-int/lit8 v5, v5, 0x6

    goto :goto_3f

    .line 77526
    :cond_57
    check-cast p1, Ljava/lang/Number;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_6e
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "TMPvKOVVzNQQbWd0BUQkkejykTOsNvUF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 77527
    :cond_7d
    instance-of v3, p1, Ljava/lang/Byte;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_8d

    goto :goto_13

    .line 77528
    :cond_8d
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "s3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_a5

    .line 77529
    if-nez p0, :cond_9b

    .line 77530
    add-int/lit8 v5, v5, 0x4

    goto :goto_3f

    .line 77531
    :cond_9b
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 77532
    :cond_a5
    instance-of v3, p1, Ljava/lang/Long;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_c3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "iNLd9F0jnEpsxqy1iq2koshjG7Cem"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_d8

    .line 77533
    :goto_bd
    if-nez p0, :cond_cd

    .line 77534
    add-int/lit8 v5, v5, 0x14

    goto/16 :goto_3f

    :cond_c3
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "8oF02HpiiNyioS6v2HdIaX3HTJH9lv2f"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_d8

    goto :goto_bd

    .line 77535
    :cond_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_3f

    .line 77536
    :cond_d8
    if-nez p0, :cond_dc

    .line 77537
    const/4 v0, -0x1

    return v0

    .line 77538
    :cond_dc
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static A0A(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .registers 5
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77539
    instance-of v0, p1, Ljava/util/Formattable;

    if-eqz v0, :cond_34

    .line 77540
    if-nez p0, :cond_2e

    .line 77541
    const/4 p0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "4BKkoEbfngOw5R5InwlEw4FZQQsGPoGb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0QrsJ9emLHdwhPrF0n6J941lHnHZbBBM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    .line 77542
    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77543
    :cond_34
    const/4 v1, 0x0

    .line 77544
    .local v0, "str":Ljava/lang/String;
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 77545
    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_5b

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 77546
    :cond_49
    :goto_49
    if-nez v1, :cond_54

    .line 77547
    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0G(III)Ljava/lang/String;

    move-result-object v1

    .line 77548
    :cond_54
    if-nez p0, :cond_6d

    .line 77549
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_5b
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "2Hj2rBW3humzXZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_49

    .line 77550
    :cond_66
    if-eqz p1, :cond_49

    .line 77551
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 77552
    :cond_6d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77553
    const/4 v0, -0x3

    return v0
.end method

.method public static A0B(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I
    .registers 10
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 77555
    .local v0, "formatLen":I
    .local v1, "index":I
    const/4 v3, 0x0

    .line 77556
    .local v2, "remainingLen":I
    :goto_5
    if-ge p2, v4, :cond_4c

    .line 77557
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 77558
    .local v3, "ch":C
    const/16 v1, 0x25

    if-ne v2, v1, :cond_1d

    .line 77559
    add-int/lit8 v0, p2, 0x1

    if-le v4, v0, :cond_28

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_28

    .line 77560
    add-int/lit8 p2, p2, 0x1

    .line 77561
    :cond_1d
    if-nez p0, :cond_24

    .line 77562
    add-int/lit8 v3, v3, 0x1

    .line 77563
    .end local v3    # "ch":C
    :goto_21
    add-int/lit8 p2, p2, 0x1

    .line 77564
    goto :goto_5

    .line 77565
    :cond_24
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 77566
    :cond_28
    if-eqz p4, :cond_46

    .line 77567
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3e
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "iV8t4Rd0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 77568
    :cond_46
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77569
    :cond_4c
    if-eqz p4, :cond_50

    add-int/2addr p3, v3

    :goto_4f
    return p3

    :cond_50
    const/4 p3, -0x3

    goto :goto_4f
.end method

.method public static A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 20
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77570
    const/4 v7, 0x0

    .line 77571
    .local v0, "segIdx":I
    const/4 v4, 0x0

    .line 77572
    .local v1, "length":I
    const/4 v3, 0x0

    if-nez p0, :cond_37

    const/4 v2, 0x1

    .line 77573
    .local v11, "dryRun":Z
    :goto_6
    const/4 v1, -0x1

    if-nez p2, :cond_a

    const/4 v3, -0x1

    .line 77574
    .local p0, "startAt":I
    :cond_a
    move v12, v3

    .end local v0    # "segIdx":I
    .end local v1    # "length":I
    .local v7, "argIdx":I
    .local p1, "segIdx":I
    .local p2, "length":I
    :goto_b
    if-ge v12, p2, :cond_39

    .line 77575
    move-object v5, p0

    move-object v6, p1

    .end local v7    # "argIdx":I
    .local p3, "argIdx":I
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/YP;->A0D(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    .line 77576
    .local v0, "appendLen":I
    if-ne v0, v1, :cond_1e

    .line 77577
    return v1

    .line 77578
    :cond_1e
    if-eqz v2, :cond_21

    .line 77579
    add-int/2addr v4, v0

    .line 77580
    :cond_21
    invoke-static {p1, v7}, Lcom/facebook/ads/redexgen/X/YP;->A01(Ljava/lang/String;I)I

    move-result v7

    .line 77581
    .end local p3    # "argIdx":I
    .local v2, "argIdx":I
    if-ne v12, v3, :cond_2f

    const/16 v0, -0xc8

    if-ne v7, v0, :cond_31

    if-eqz v2, :cond_31

    .line 77582
    const/4 v0, -0x2

    return v0

    .line 77583
    :cond_2f
    const/16 v0, -0xc8

    .line 77584
    :cond_31
    if-gez v7, :cond_34

    goto :goto_3b

    .line 77585
    :cond_34
    add-int/lit8 v12, v12, 0x1

    .end local v2    # "argIdx":I
    .restart local v7    # "argIdx":I
    goto :goto_b

    .line 77586
    :cond_37
    const/4 v2, 0x0

    goto :goto_6

    .line 77587
    .end local v0    # "appendLen":I
    :cond_39
    const/16 v0, -0xc8

    .line 77588
    .end local v7    # "argIdx":I
    :goto_3b
    if-eq v7, v0, :cond_41

    const/16 v0, -0xc9

    if-ne v7, v0, :cond_46

    .line 77589
    :cond_41
    if-eqz v2, :cond_44

    .line 77590
    return v4

    .line 77591
    :cond_44
    const/4 v0, -0x3

    return v0

    .line 77592
    :cond_46
    invoke-static {p0, p1, v7, v4, v2}, Lcom/facebook/ads/redexgen/X/YP;->A0B(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public static A0D(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 10
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77593
    const/4 v0, 0x1

    packed-switch p7, :pswitch_data_42

    .line 77594
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77595
    :pswitch_a
    invoke-static {p0, p1, p2, p6, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 77596
    :pswitch_f
    invoke-static {p0, p1, p2, p5, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 77597
    :pswitch_14
    invoke-static {p0, p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 77598
    :pswitch_19
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 77599
    :pswitch_1e
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_39

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_39
    sget-object p0, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "hCwEXGE3aO1xOwN9cf3ilFtdUGpFL"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return p1

    nop

    :pswitch_data_42
    .packed-switch -0x1
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public static A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I
    .registers 12
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77600
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 77601
    .local v1, "formatLen":I
    const/4 v6, 0x0

    .line 77602
    .local v2, "length":I
    :goto_5
    if-ge p2, v5, :cond_4b

    .line 77603
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77604
    .local v3, "ch":C
    const/16 v4, 0x25

    if-ne v0, v4, :cond_50

    .line 77605
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/YP;->A02(Ljava/lang/String;I)I

    move-result v1

    .line 77606
    .local v5, "validatePercentResult":I
    const/16 v0, -0x64

    const/4 v3, -0x1

    if-ne v1, v0, :cond_5b

    .line 77607
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 77608
    .local v6, "nextChar":C
    if-nez p4, :cond_23

    if-eq v2, v4, :cond_23

    .line 77609
    return v3

    .line 77610
    :cond_23
    const/4 v1, 0x1

    .line 77611
    .local p1, "segmentDone":Z
    const/16 v0, 0x73

    if-ne v2, v0, :cond_2f

    .line 77612
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/YP;->A0A(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v0

    .line 77613
    .local v4, "appendResult":I
    .restart local v4    # "appendResult":I
    :goto_2c
    if-ne v0, v3, :cond_46

    .line 77614
    return v3

    .line 77615
    .end local v4    # "appendResult":I
    :cond_2f
    const/16 v0, 0x64

    if-ne v2, v0, :cond_38

    .line 77616
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/YP;->A09(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v0

    .restart local v4    # "appendResult":I
    goto :goto_2c

    .line 77617
    .end local v4    # "appendResult":I
    :cond_38
    if-ne v2, v4, :cond_44

    .line 77618
    const/4 v1, 0x0

    .line 77619
    if-eqz p0, :cond_40

    .line 77620
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77621
    :cond_40
    const/4 v0, 0x1

    .line 77622
    .restart local v4    # "appendResult":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 77623
    .end local v4    # "appendResult":I
    :cond_44
    const/4 v0, -0x1

    goto :goto_2c

    .line 77624
    :cond_46
    if-nez p0, :cond_49

    .line 77625
    add-int/2addr v6, v0

    .line 77626
    :cond_49
    if-eqz v1, :cond_54

    .line 77627
    :cond_4b
    if-nez p0, :cond_4e

    :goto_4d
    return v6

    :cond_4e
    const/4 v6, -0x3

    goto :goto_4d

    .line 77628
    .end local v5    # "validatePercentResult":I
    :cond_50
    if-nez p0, :cond_57

    .line 77629
    add-int/lit8 v6, v6, 0x1

    .line 77630
    .end local v3    # "ch":C
    :cond_54
    :goto_54
    add-int/lit8 p2, p2, 0x1

    .line 77631
    goto :goto_5

    .line 77632
    :cond_57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 77633
    .restart local v5    # "validatePercentResult":I
    :cond_5b
    return v3
.end method

.method public static varargs A0F(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 14
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77634
    const/4 v9, 0x0

    .line 77635
    .local v0, "segIdx":I
    const/4 v8, 0x0

    .line 77636
    .local v1, "length":I
    const/4 v7, 0x0

    if-nez p0, :cond_3a

    const/4 v6, 0x1

    .line 77637
    .local v3, "dryRun":Z
    :goto_6
    const/4 v10, 0x0

    .line 77638
    .local v4, "argsWasEmpty":Z
    if-eqz p2, :cond_c

    array-length v0, p2

    if-nez v0, :cond_f

    .line 77639
    :cond_c
    sget-object p2, Lcom/facebook/ads/redexgen/X/YP;->A02:[Ljava/lang/Object;

    .line 77640
    const/4 v10, 0x1

    .line 77641
    :cond_f
    const/4 v5, 0x0

    .line 77642
    .local v5, "formatted":Z
    array-length v4, p2

    :goto_11
    const/16 v3, -0xc9

    const/16 v2, -0xc8

    if-ge v7, v4, :cond_2c

    aget-object v1, p2, v7

    .line 77643
    .local v9, "arg":Ljava/lang/Object;
    xor-int/lit8 v0, v10, 0x1

    invoke-static {p0, p1, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v1

    .line 77644
    .local v10, "appendLen":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_23

    .line 77645
    return v0

    .line 77646
    :cond_23
    if-eqz v6, :cond_26

    .line 77647
    add-int/2addr v8, v1

    .line 77648
    :cond_26
    invoke-static {p1, v9}, Lcom/facebook/ads/redexgen/X/YP;->A01(Ljava/lang/String;I)I

    move-result v9

    .line 77649
    if-ne v9, v2, :cond_32

    .line 77650
    :cond_2c
    :goto_2c
    if-eqz v6, :cond_3c

    if-nez v5, :cond_3c

    .line 77651
    const/4 v0, -0x2

    return v0

    .line 77652
    :cond_32
    if-ne v9, v3, :cond_36

    .line 77653
    const/4 v5, 0x1

    .line 77654
    goto :goto_2c

    .line 77655
    :cond_36
    const/4 v5, 0x1

    .line 77656
    .end local v9    # "arg":Ljava/lang/Object;
    .end local v10    # "appendLen":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 77657
    :cond_3a
    const/4 v6, 0x0

    goto :goto_6

    .line 77658
    :cond_3c
    if-eq v9, v2, :cond_40

    if-ne v9, v3, :cond_5f

    .line 77659
    :cond_40
    if-eqz v6, :cond_43

    .line 77660
    return v8

    .line 77661
    :cond_43
    const/4 v3, -0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_57

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_57
    sget-object v2, Lcom/facebook/ads/redexgen/X/YP;->A01:[Ljava/lang/String;

    const-string v1, "CmNNkHWmndNZo1faI8JZxc9feyzulH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 77662
    :cond_5f
    invoke-static {p0, p1, v9, v8, v6}, Lcom/facebook/ads/redexgen/X/YP;->A0B(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public static A0G(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/YP;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x65

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0H(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77663
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_44

    .line 77664
    invoke-static {p0, p6}, Lcom/facebook/ads/redexgen/X/YP;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77665
    :pswitch_c
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    aput-object p5, v0, v4

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77666
    :pswitch_1c
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77667
    :pswitch_29
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77668
    :pswitch_34
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77669
    :pswitch_3d
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_34
        :pswitch_29
        :pswitch_1c
        :pswitch_c
    .end packed-switch
.end method

.method public static A0I(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77670
    move-object p0, p0

    move p1, p1

    move-object p2, p2

    move-object p3, p3

    move-object p4, p4

    move-object p5, p5

    move-object p6, p6

    invoke-static/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/YP;->A03(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 77671
    .local p5, "bufferSize":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_13

    .line 77672
    invoke-static/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/YP;->A0H(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77673
    :cond_13
    const/4 v0, -0x2

    if-ne v2, v0, :cond_17

    .line 77674
    return-object p0

    .line 77675
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77676
    .local p6, "output":Ljava/lang/StringBuilder;
    if-ne p1, v1, :cond_26

    .line 77677
    invoke-static {v0, p0, p6}, Lcom/facebook/ads/redexgen/X/YP;->A0F(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77678
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77679
    :cond_26
    move-object v1, p0

    move v2, p1

    move-object p0, p2

    move-object p1, p3

    move-object p2, p4

    move-object p3, p5

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_21
.end method

.method public static A0J(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77680
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/YP;->A0I(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77681
    :try_start_0
    const/4 v2, 0x2

    const/16 v1, 0x2d

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0G(III)Ljava/lang/String;

    move-result-object v0

    .line 77682
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/YL;->A00(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 77683
    const/4 v0, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_15
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_15} :catch_17
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_15} :catch_15

    .line 77684
    :catch_15
    move-exception v0

    goto :goto_18

    :catch_17
    move-exception v0

    .line 77685
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YP;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0L()V
    .registers 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/YP;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x6t
        -0x14t
        -0x36t
        -0x21t
        -0x1at
        -0x14t
        -0x1dt
        -0x25t
        -0x69t
        -0x1bt
        -0x1at
        -0x15t
        -0x69t
        -0x27t
        -0x24t
        -0x69t
        -0x1bt
        -0x14t
        -0x1dt
        -0x1dt
        -0x69t
        -0x14t
        -0x1bt
        -0x25t
        -0x24t
        -0x17t
        -0x69t
        -0x1bt
        -0x1at
        -0x17t
        -0x1ct
        -0x28t
        -0x1dt
        -0x69t
        -0x26t
        -0x20t
        -0x17t
        -0x26t
        -0x14t
        -0x1ct
        -0x16t
        -0x15t
        -0x28t
        -0x1bt
        -0x26t
        -0x24t
        -0x16t
        -0xdt
        -0x6t
        -0xft
        -0xft
    .end array-data
.end method
