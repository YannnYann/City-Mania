###### Class ads_mobile_sdk.c44 (ads_mobile_sdk.c44)
.class public final Lads_mobile_sdk/c44;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    const/4 v1, 0x7

    aget v1, v0, v1

    const/16 v2, 0x8

    aget v0, v0, v2

    rem-int/2addr v1, v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/c44;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lads_mobile_sdk/c44;->b:I

    return-void

    nop

    :array_1e
    .array-data 4
        0x5a606509
        0x44202730
        0x1a9619a6
        0x44622612
        0x335b81c3
        -0x61f9e24e    # -7.100042E-21f
        0x1dd6d6f4
        0x73bbd7f8
        0x1876589d
    .end array-data
.end method


# virtual methods
.method public final a(J)I
    .registers 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/16 v3, 0x9

    .line 1
    new-array v4, v3, [I

    fill-array-data v4, :array_84

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x2

    aget v10, v4, v9

    const/4 v11, 0x3

    aget v12, v4, v11

    const/4 v13, 0x4

    aget v14, v4, v13

    const/4 v15, 0x5

    move/from16 v16, v5

    aget v5, v4, v15

    const/16 v17, 0x6

    move/from16 v18, v7

    aget v7, v4, v17

    const/16 v19, 0x7

    aget v20, v4, v19

    const/16 v21, 0x8

    aget v4, v4, v21

    move/from16 v22, v9

    not-int v9, v6

    and-int/2addr v8, v9

    or-int/2addr v8, v10

    and-int/2addr v6, v12

    or-int/2addr v6, v14

    invoke-static {v8, v6, v5, v7}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v5

    rem-int v20, v20, v4

    xor-int v4, v5, v20

    new-array v3, v3, [J

    fill-array-data v3, :array_9a

    aget-wide v5, v3, v16

    aget-wide v7, v3, v18

    aget-wide v9, v3, v22

    aget-wide v11, v3, v11

    aget-wide v13, v3, v13

    aget-wide v15, v3, v15

    aget-wide v17, v3, v17

    aget-wide v19, v3, v19

    aget-wide v21, v3, v21

    move/from16 v23, v4

    not-long v3, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v9

    and-long/2addr v5, v11

    or-long/2addr v5, v13

    add-long/2addr v3, v5

    sub-long/2addr v3, v15

    add-long v3, v3, v17

    rem-long v19, v19, v21

    xor-long v3, v3, v19

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_6f

    iget v3, v0, Lads_mobile_sdk/c44;->b:I

    add-int v3, v3, v23

    int-to-long v3, v3

    sub-long/2addr v3, v1

    goto :goto_71

    :cond_6f
    neg-long v1, v1

    add-long/2addr v3, v1

    :goto_71
    cmp-long v1, v3, v5

    if-ltz v1, :cond_7e

    iget v1, v0, Lads_mobile_sdk/c44;->b:I

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-gez v1, :cond_7e

    long-to-int v1, v3

    return v1

    :cond_7e
    new-instance v1, Lads_mobile_sdk/a44;

    invoke-direct {v1}, Lads_mobile_sdk/a44;-><init>()V

    throw v1

    :array_84
    .array-data 4
        0x77465f01
        0x7f00424f
        0x863b9a1
        -0x8eebdb2
        -0x7766f770
        0xc103e9e
        0x164585d
        0x440badfc
        0x5072367
    .end array-data

    :array_9a
    .array-data 8
        0x100f59dc
        0x76db3a86
        0x96cdb2c
        -0x96cdf7d
        -0x76bfee8f
        0x212a72d4
        0x885e1b
        0x7fffca11
        0x1a27709e
    .end array-data
.end method

.method public final a()Lads_mobile_sdk/l44;
    .registers 11

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [I

    fill-array-data v0, :array_50

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v8, v0, v8

    const/16 v9, 0x8

    aget v0, v0, v9

    not-int v9, v1

    and-int/2addr v2, v9

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    invoke-static {v2, v1, v6, v7}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v1

    rem-int/2addr v8, v0

    xor-int v0, v1, v8

    iget v1, p0, Lads_mobile_sdk/c44;->b:I

    if-lez v1, :cond_49

    iget-object v2, p0, Lads_mobile_sdk/c44;->a:Ljava/util/ArrayList;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/l44;

    iget v3, p0, Lads_mobile_sdk/c44;->b:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lads_mobile_sdk/c44;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/c44;->b:I

    return-object v1

    :cond_49
    new-instance v0, Lads_mobile_sdk/a44;

    invoke-direct {v0}, Lads_mobile_sdk/a44;-><init>()V

    throw v0

    nop

    :array_50
    .array-data 4
        0x56e5e35
        0x5700e868
        0x22f18533
        -0xaea95b7
        -0x5d6aec7b
        0x36cbcad2
        0x8beda84
        0x2ee9fbe1
        0x1b640c94
    .end array-data
.end method

.method public final a(Lads_mobile_sdk/l44;)V
    .registers 13

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_50

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x4

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v0, v8

    const/4 v9, 0x7

    aget v9, v0, v9

    const/16 v10, 0x8

    aget v0, v0, v10

    not-int v10, v1

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v1, v5

    or-int/2addr v1, v6

    invoke-static {v3, v1, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v1

    rem-int/2addr v9, v0

    xor-int v0, v1, v9

    iget v1, p0, Lads_mobile_sdk/c44;->b:I

    if-ge v1, v0, :cond_4a

    iget-object v0, p0, Lads_mobile_sdk/c44;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_3f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_3f
    iget v1, p0, Lads_mobile_sdk/c44;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_44
    iget p1, p0, Lads_mobile_sdk/c44;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lads_mobile_sdk/c44;->b:I

    return-void

    :cond_4a
    new-instance p1, Lads_mobile_sdk/b44;

    invoke-direct {p1}, Lads_mobile_sdk/b44;-><init>()V

    throw p1

    :array_50
    .array-data 4
        0x1f3da4d5
        0x2c291419
        0x186028c7
        0x250fdc38
        0x176c9e5
        0x47f6d07d
        0x11bfcfe4
        0x3f8b0cbf
        0x37e203ab
    .end array-data
.end method
