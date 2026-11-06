###### Class ads_mobile_sdk.l34 (ads_mobile_sdk.l34)
.class public final Lads_mobile_sdk/l34;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Lads_mobile_sdk/l44;
    .registers 3

    .line 1
    new-instance v0, Lads_mobile_sdk/k34;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/k34;-><init>(J)V

    invoke-static {v0}, Lads_mobile_sdk/l44;->a(Lads_mobile_sdk/d44;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLads_mobile_sdk/k44;Z)V
    .registers 29

    move-object/from16 v0, p2

    const/16 v1, 0x9

    .line 3
    new-array v1, v1, [J

    fill-array-data v1, :array_90

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v8, v1, v8

    const/4 v10, 0x3

    aget-wide v10, v1, v10

    const/4 v12, 0x4

    aget-wide v12, v1, v12

    const/4 v14, 0x5

    aget-wide v14, v1, v14

    const/16 v16, 0x6

    aget-wide v16, v1, v16

    const/16 v18, 0x7

    aget-wide v19, v1, v18

    const/16 v21, 0x8

    aget-wide v21, v1, v21

    move v1, v5

    move-wide/from16 v23, v6

    not-long v5, v3

    and-long v5, v5, v23

    or-long/2addr v5, v8

    and-long/2addr v3, v10

    or-long/2addr v3, v12

    add-long/2addr v5, v3

    sub-long/2addr v5, v14

    add-long v5, v5, v16

    rem-long v19, v19, v21

    xor-long v3, v5, v19

    const v5, 0x66deaaf0

    not-int v6, v5

    const v7, 0x172600ca

    and-int/2addr v6, v7

    const v7, 0x2c185527

    or-int/2addr v6, v7

    const v7, 0x532e08dd

    and-int/2addr v5, v7

    const v7, 0x40d83f37

    or-int/2addr v5, v7

    const v7, 0x7d050988

    const v8, 0x168ac66

    invoke-static {v6, v5, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v5

    const v6, 0x5c63d66c

    const v7, 0xafd33ca

    rem-int/2addr v6, v7

    xor-int/2addr v5, v6

    if-eqz p3, :cond_68

    add-long v6, p0, p0

    const/16 v8, 0x3f

    shr-long v8, p0, v8

    xor-long/2addr v6, v8

    goto :goto_6a

    :cond_68
    move-wide/from16 v6, p0

    :goto_6a
    move v8, v1

    :goto_6b
    and-long v9, v6, v3

    ushr-long v6, v6, v18

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_7a

    if-gez v8, :cond_78

    goto :goto_7a

    :cond_78
    move v11, v2

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v11, v1

    :goto_7b
    long-to-int v9, v9

    if-eqz v11, :cond_82

    or-int/lit16 v9, v9, 0x80

    shl-int/2addr v9, v5

    shr-int/2addr v9, v5

    :cond_82
    int-to-byte v9, v9

    .line 4
    iget v10, v0, Lads_mobile_sdk/k44;->b:I

    iget-object v10, v0, Lads_mobile_sdk/k44;->a:Ljava/io/OutputStream;

    invoke-virtual {v10, v9}, Ljava/io/OutputStream;->write(I)V

    if-nez v11, :cond_8d

    return-void

    :cond_8d
    add-int/2addr v8, v1

    goto :goto_6b

    nop

    :array_90
    .array-data 8
        0x773d0e7b
        0x5802553e
        0x6d512429
        0x10065116
        0x6da40c08
        0x1045d6a1eL
        0x1acca918
        0x62823856
        0x611b7818
    .end array-data
.end method
