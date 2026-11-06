###### Class com.facebook.ads.redexgen.X.Cif (com.facebook.ads.redexgen.X.if)
.class public final Lcom/facebook/ads/redexgen/X/if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ie;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/ie;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2624
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1CU3iw4Trc3qggngkxP7P26jEGLrLZaR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qcH7HKgKdAybLTWn0rmK7JyCE0S9C8rn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oNJ0dA1Zpt4CixMfeWT18n5RxX88Y0E3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FZ8N3xW3PfzdZjJWrErZ2QIuE13XuJtD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DvPOKoiXqOiYMgjx6IqCziqOSBLzEcJY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MpMZeZ7xc490HXAXJonG5r1KTyiIoUHH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NGMd8PbmdSzgSLgNcWdVjgLa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jY1Ixh6DMe9BpV8yAbg842YJP45AQ2Eb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/if;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ie;)V
    .registers 2

    .line 96258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96259
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    .line 96260
    return-void
.end method

.method private A00(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;)I"
        }
    .end annotation

    .line 96261
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v3, 0x0

    .line 96262
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v2, :cond_1c

    .line 96263
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iH;

    .line 96264
    .local v2, "op1":Lcom/facebook/ads/redexgen/X/iH;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_18

    .line 96265
    if-eqz v3, :cond_19

    .line 96266
    return v2

    .line 96267
    :cond_18
    const/4 v3, 0x1

    .line 96268
    .end local v2    # "op1":Lcom/facebook/ads/redexgen/X/iH;
    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 96269
    .end local v1    # "i":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method private A01(Ljava/util/List;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;II)V"
        }
    .end annotation

    .line 96270
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    move-object v1, p1

    move v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/iH;

    .line 96271
    .local v0, "moveOp":Lcom/facebook/ads/redexgen/X/iH;
    move v4, p3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/iH;

    .line 96272
    .local p1, "nextOp":Lcom/facebook/ads/redexgen/X/iH;
    iget v0, v5, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    packed-switch v0, :pswitch_data_24

    .line 96273
    :goto_14
    :pswitch_14
    return-void

    .line 96274
    :pswitch_15
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/if;->A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/iH;ILcom/facebook/ads/redexgen/X/iH;)V

    goto :goto_14

    .line 96275
    :pswitch_1a
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/if;->A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/iH;ILcom/facebook/ads/redexgen/X/iH;)V

    .line 96276
    goto :goto_14

    .line 96277
    :pswitch_1f
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/if;->A02(Ljava/util/List;ILcom/facebook/ads/redexgen/X/iH;ILcom/facebook/ads/redexgen/X/iH;)V

    .line 96278
    goto :goto_14

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1a
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private A02(Ljava/util/List;ILcom/facebook/ads/redexgen/X/iH;ILcom/facebook/ads/redexgen/X/iH;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/iH;",
            "I",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ")V"
        }
    .end annotation

    .line 96279
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v2, 0x0

    .line 96280
    .local v0, "offset":I
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ge v1, v0, :cond_9

    .line 96281
    add-int/lit8 v2, v2, -0x1

    .line 96282
    :cond_9
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ge v1, v0, :cond_11

    .line 96283
    add-int/lit8 v2, v2, 0x1

    .line 96284
    :cond_11
    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v1, v0, :cond_1e

    .line 96285
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96286
    :cond_1e
    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-gt v1, v0, :cond_2b

    .line 96287
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96288
    :cond_2b
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v0, v2

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96289
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96290
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96291
    return-void
.end method

.method private final A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/iH;ILcom/facebook/ads/redexgen/X/iH;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/iH;",
            "I",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ")V"
        }
    .end annotation

    .line 96292
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v3, 0x0

    .line 96293
    .local v0, "extraRm":Lcom/facebook/ads/redexgen/X/iH;
    const/4 v7, 0x0

    .line 96294
    .local v1, "revertedMove":Z
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    const/4 v4, 0x1

    if-ge v1, v0, :cond_9a

    .line 96295
    const/4 v6, 0x0

    .line 96296
    .local v2, "moveIsBackwards":Z
    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-ne v1, v0, :cond_1a

    iget v2, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_1a

    .line 96297
    const/4 v7, 0x1

    .line 96298
    :cond_1a
    :goto_1a
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    const/4 v5, 0x2

    if-ge v1, v0, :cond_62

    .line 96299
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96300
    :cond_26
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v1, v0, :cond_3f

    .line 96301
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96302
    .end local v3
    :cond_31
    :goto_31
    if-eqz v7, :cond_ae

    .line 96303
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96304
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    invoke-interface {v0, p3}, Lcom/facebook/ads/redexgen/X/ie;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 96306
    return-void

    .line 96307
    :cond_3f
    iget v2, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_31

    .line 96308
    iget v3, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v3, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v3, v0

    .line 96309
    .local v3, "remaining":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v1, v4

    const/4 v0, 0x0

    invoke-interface {v2, v5, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ie;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v3

    .line 96310
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v1, v0

    iput v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_31

    .line 96311
    :cond_62
    iget v2, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_26

    .line 96312
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96313
    iput v5, p3, Lcom/facebook/ads/redexgen/X/iH;->A00:I

    .line 96314
    iput v4, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96315
    iget v3, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/if;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_158

    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A01:[Ljava/lang/String;

    const-string v1, "8AUTweiK2qHuqKAjuAP9RAHRjtqC9cI5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fxjAamJyQJjVOLb9u9QxKoC9co41mLuZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_99

    .line 96316
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/ie;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    .line 96318
    :cond_99
    return-void

    .line 96319
    .end local v2    # "moveIsBackwards":Z
    :cond_9a
    const/4 v6, 0x1

    .line 96320
    .restart local v2    # "moveIsBackwards":Z
    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v0, v4

    if-ne v1, v0, :cond_1a

    iget v2, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_1a

    .line 96321
    const/4 v7, 0x1

    goto/16 :goto_1a

    .line 96322
    :cond_ae
    if-eqz v6, :cond_11b

    .line 96323
    if-eqz v3, :cond_cc

    .line 96324
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-le v1, v0, :cond_bf

    .line 96325
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96326
    :cond_bf
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-le v1, v0, :cond_cc

    .line 96327
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96328
    :cond_cc
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-le v1, v0, :cond_d9

    .line 96329
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96330
    :cond_d9
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-le v1, v0, :cond_e6

    .line 96331
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96332
    :cond_e6
    :goto_e6
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_152

    .line 96333
    sget-object v2, Lcom/facebook/ads/redexgen/X/if;->A01:[Ljava/lang/String;

    const-string v1, "R1vl9Esi4EQuoIO0IEs3BYKA9Bp2yfIo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ll7MLLjNdpT1F8Cd0W3dCYnGe1w6KT9M"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-eq v1, v0, :cond_117

    .line 96334
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96335
    :goto_111
    if-eqz v3, :cond_116

    .line 96336
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96337
    :cond_116
    return-void

    .line 96338
    :cond_117
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_111

    .line 96339
    :cond_11b
    if-eqz v3, :cond_137

    .line 96340
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-lt v1, v0, :cond_12a

    .line 96341
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96342
    :cond_12a
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-lt v1, v0, :cond_137

    .line 96343
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96344
    :cond_137
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-lt v1, v0, :cond_144

    .line 96345
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96346
    :cond_144
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-lt v1, v0, :cond_e6

    .line 96347
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_e6

    :cond_152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_158
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/iH;ILcom/facebook/ads/redexgen/X/iH;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/iH;",
            "I",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ")V"
        }
    .end annotation

    .line 96348
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v6, 0x0

    .line 96349
    .local v0, "extraUp1":Lcom/facebook/ads/redexgen/X/iH;
    const/4 v4, 0x0

    .line 96350
    .local v1, "extraUp2":Lcom/facebook/ads/redexgen/X/iH;
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ge v1, v0, :cond_5a

    .line 96351
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96352
    :cond_f
    :goto_f
    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    if-gt v1, v0, :cond_38

    .line 96353
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    .line 96354
    .end local v2
    :cond_1a
    :goto_1a
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96355
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    if-lez v0, :cond_2f

    .line 96356
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96357
    :goto_24
    if-eqz v6, :cond_29

    .line 96358
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96359
    :cond_29
    if-eqz v4, :cond_2e

    .line 96360
    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96361
    :cond_2e
    return-void

    .line 96362
    :cond_2f
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/ie;->AIj(Lcom/facebook/ads/redexgen/X/iH;)V

    goto :goto_24

    .line 96364
    :cond_38
    iget v2, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_1a

    .line 96365
    iget v7, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v7, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    sub-int/2addr v7, v0

    .line 96366
    .local v2, "remaining":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    add-int/2addr v1, v5

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v7, v0}, Lcom/facebook/ads/redexgen/X/ie;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v4

    .line 96367
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v0, v7

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    goto :goto_1a

    .line 96368
    :cond_5a
    iget v2, p3, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_f

    .line 96369
    iget v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A01:I

    .line 96370
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/ie;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/iH;->A02:I

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/iH;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/ie;->ADb(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v6

    goto :goto_f
.end method


# virtual methods
.method public final A05(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iH;",
            ">;)V"
        }
    .end annotation

    .line 96371
    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/if;->A00(Ljava/util/List;)I

    move-result v1

    .local v1, "badMove":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_d

    .line 96372
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/if;->A01(Ljava/util/List;II)V

    goto :goto_0

    .line 96373
    :cond_d
    return-void
.end method
