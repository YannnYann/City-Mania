###### Class ads_mobile_sdk.n34 (ads_mobile_sdk.n34)
.class public abstract Lads_mobile_sdk/n34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x2eb141f2

    not-int v1, v0

    const v2, 0x5843bbc2

    and-int/2addr v1, v2

    const v2, 0x3d44e104

    or-int/2addr v1, v2

    const v2, 0x420b5ac2

    and-int/2addr v0, v2

    const v2, 0x135c403c

    or-int/2addr v0, v2

    const v2, -0x6dd75cfe

    const v3, 0xb518b17

    .line 1
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x46e87ccd

    const v2, 0x3d1b58ba

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x601d8812

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x2e76d02

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x26657305

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x4c449552    # 5.153313E7f

    aput v2, v0, v1

    sput-object v0, Lads_mobile_sdk/n34;->a:[I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 33

    const v0, 0x579328b9

    not-int v1, v0

    const v2, 0x1140fe0a

    and-int/2addr v1, v2

    const v2, 0x4c72a18e    # 6.360428E7f

    or-int/2addr v1, v2

    const v2, 0x31125f01

    and-int/2addr v0, v2

    const v2, 0x2e17a1c3

    or-int/2addr v0, v2

    const v2, -0x7fc8889d

    const v3, 0xee7ca12

    .line 2
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x3f7c2ff4

    const v2, 0x25413bec

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-array v3, v0, [B

    move v4, v1

    :goto_30
    array-length v5, v2

    if-ge v4, v5, :cond_14d

    rem-int v5, v4, v0

    const/16 v6, 0x18

    if-nez v5, :cond_13b

    ushr-int/lit8 v7, v4, 0x3

    const v8, 0x6c8fa035

    move v10, v1

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move v9, v8

    :cond_5d
    :goto_5d
    const v1, 0x573a4e4

    if-eq v9, v1, :cond_12d

    const v1, 0x4f0d0842    # 2.3661286E9f

    if-eq v9, v1, :cond_ff

    if-eq v9, v8, :cond_b4

    and-int v1, v13, v25

    shl-int v1, v1, v21

    shr-int v1, v1, v21

    int-to-byte v1, v1

    .line 3
    aput-byte v1, v3, v27

    shr-int v1, v13, v24

    and-int v1, v1, v25

    shl-int v1, v1, v21

    shr-int v1, v1, v21

    int-to-byte v1, v1

    const/4 v7, 0x1

    aput-byte v1, v3, v7

    shr-int v1, v13, v23

    and-int v1, v1, v25

    shl-int v1, v1, v21

    shr-int v1, v1, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v26

    shr-int v1, v13, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v16

    and-int v1, v12, v25

    shl-int v1, v1, v21

    shr-int v1, v1, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v14

    shr-int v1, v12, v24

    and-int v1, v1, v25

    shl-int v1, v1, v21

    shr-int v1, v1, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v17

    shr-int v1, v12, v23

    and-int v1, v1, v25

    shl-int v1, v1, v21

    shr-int v1, v1, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v22

    shr-int v1, v12, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v20

    goto/16 :goto_13d

    :cond_b4
    const v1, 0x7d0c3256

    not-int v10, v1

    const v11, 0x7143371f

    and-int/2addr v10, v11

    const v11, 0xa2de900

    or-int/2addr v10, v11

    const v11, -0x2b529e1

    and-int/2addr v1, v11

    const v11, -0x73d31e40

    or-int/2addr v1, v11

    const v11, 0x139ff4a2

    const v12, 0x2cdf0bf

    invoke-static {v10, v1, v11, v12}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v1

    const v10, 0x54d9439b

    const v11, 0x4db63022    # 3.8207597E8f

    rem-int/2addr v10, v11

    xor-int v13, v1, v10

    const v1, -0x671bfb51

    add-int/2addr v9, v1

    const/16 v16, 0x3

    const/16 v11, 0x40

    const/4 v14, 0x4

    const/16 v17, 0x5

    const v18, 0x4fe15c59

    const/16 v19, 0xb

    const/16 v25, 0xff

    const/16 v24, 0x8

    const/16 v26, 0x2

    const/16 v23, 0x10

    const/16 v22, 0x6

    const/16 v20, 0x7

    move/from16 v21, v6

    move v12, v7

    move/from16 v10, v27

    move v15, v10

    goto/16 :goto_5d

    :cond_ff
    shl-int v1, v12, v14

    ushr-int v28, v12, v17

    add-int v29, v28, v12

    and-int v30, v15, v16

    sget-object v31, Lads_mobile_sdk/n34;->a:[I

    aget v30, v31, v30

    add-int v30, v15, v30

    xor-int v1, v1, v29

    xor-int v1, v1, v30

    add-int/2addr v13, v1

    add-int v15, v15, v18

    shl-int v1, v13, v14

    shr-int v29, v15, v19

    and-int v29, v29, v16

    aget v29, v31, v29

    add-int v29, v15, v29

    add-int v28, v28, v13

    xor-int v1, v1, v28

    xor-int v1, v1, v29

    add-int/2addr v12, v1

    add-int/lit8 v10, v10, 0x1

    const v1, -0x4999635e

    add-int/2addr v9, v1

    goto/16 :goto_5d

    :cond_12d
    const v1, 0x2cc9f90b

    add-int/2addr v1, v9

    const v28, 0x4999635e    # 1256555.8f

    add-int v9, v9, v28

    if-lt v10, v11, :cond_5d

    move v9, v1

    goto/16 :goto_5d

    :cond_13b
    move/from16 v27, v1

    .line 4
    :goto_13d
    aget-byte v1, v2, v4

    aget-byte v5, v3, v5

    xor-int/2addr v1, v5

    shl-int/2addr v1, v6

    shr-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v27

    goto/16 :goto_30

    :cond_14d
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
