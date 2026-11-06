###### Class ads_mobile_sdk.h34 (ads_mobile_sdk.h34)
.class public final Lads_mobile_sdk/h34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[I


# direct methods
.method public constructor <init>([II)V
    .registers 7

    const v0, 0x1ca0c5fa

    not-int v1, v0

    const v2, 0x520c0ae8

    and-int/2addr v1, v2

    const v2, 0x2c54f525

    or-int/2addr v1, v2

    const v2, 0x52299ec8

    and-int/2addr v0, v2

    const v2, 0x21f1f424

    or-int/2addr v0, v2

    const v2, -0x1aef53da

    const v3, 0x45e6d486

    .line 2
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x1d9f6e5f

    const v2, 0x97e1b4e

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    if-ne v1, v0, :cond_31

    iput p2, p0, Lads_mobile_sdk/h34;->a:I

    iput-object p1, p0, Lads_mobile_sdk/h34;->b:[I

    return-void

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Ake3rgkWMjm+UlOd1Tg3PHccqBbIRJQk3bhyKj5k"

    invoke-static {p2}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "a0CvvBEaN339T0zNlXk="

    invoke-static {p2}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([BI)V
    .registers 27

    move-object/from16 v0, p0

    const v1, 0x69ec173c

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1c
    const v2, 0x2ae7a48f

    if-eq v3, v2, :cond_e1

    const v2, 0x5a8db186

    if-eq v3, v2, :cond_b5

    if-eq v3, v1, :cond_6e

    shr-int v1, v7, v18

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p1, v20

    shr-int v1, v7, v17

    and-int/2addr v1, v14

    shl-int v1, v1, v18

    shr-int v1, v1, v18

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, p1, v2

    shr-int v1, v7, v16

    and-int/2addr v1, v14

    shl-int v1, v1, v18

    shr-int v1, v1, v18

    int-to-byte v1, v1

    aput-byte v1, p1, v19

    and-int v1, v7, v14

    shl-int v1, v1, v18

    shr-int v1, v1, v18

    int-to-byte v1, v1

    aput-byte v1, p1, v10

    shr-int v1, v6, v18

    int-to-byte v1, v1

    aput-byte v1, p1, v8

    shr-int v1, v6, v17

    and-int/2addr v1, v14

    shl-int v1, v1, v18

    shr-int v1, v1, v18

    int-to-byte v1, v1

    aput-byte v1, p1, v9

    shr-int v1, v6, v16

    and-int/2addr v1, v14

    shl-int v1, v1, v18

    shr-int v1, v1, v18

    int-to-byte v1, v1

    aput-byte v1, p1, v15

    and-int v1, v6, v14

    shl-int v1, v1, v18

    shr-int v1, v1, v18

    int-to-byte v1, v1

    aput-byte v1, p1, v13

    return-void

    :cond_6e
    const v2, 0x6b9f7823

    not-int v4, v2

    const v5, 0x5a0c9ac3

    and-int/2addr v4, v5

    const v5, 0x563f218e

    or-int/2addr v4, v5

    const v5, -0x53fe05bf

    and-int/2addr v2, v5

    const v5, -0x5b2c9a62

    or-int/2addr v2, v5

    const v5, 0x1391c203

    const v6, 0x59e3ac4

    invoke-static {v4, v2, v5, v6}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    const v4, 0x39333bad

    const v5, 0x2fff2a9f

    rem-int/2addr v4, v5

    xor-int v5, v2, v4

    iget v7, v0, Lads_mobile_sdk/h34;->a:I

    const v2, -0x3f0472ad

    add-int/2addr v3, v2

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x3

    const v11, 0x4fe15c59

    const/16 v12, 0xb

    const/16 v18, 0x18

    const/16 v14, 0xff

    const/16 v19, 0x2

    const/4 v15, 0x6

    const/4 v13, 0x7

    const/16 v17, 0x10

    const/16 v16, 0x8

    move/from16 v6, p2

    move/from16 v4, v20

    goto/16 :goto_1c

    :cond_b5
    shl-int v2, v6, v8

    ushr-int v21, v6, v9

    xor-int v2, v2, v21

    add-int/2addr v2, v6

    iget-object v1, v0, Lads_mobile_sdk/h34;->b:[I

    and-int v22, v4, v10

    aget v22, v1, v22

    add-int v22, v4, v22

    xor-int v2, v2, v22

    add-int/2addr v7, v2

    add-int/2addr v4, v11

    shl-int v2, v7, v8

    ushr-int v22, v7, v9

    ushr-int v23, v4, v12

    and-int v23, v23, v10

    aget v1, v1, v23

    add-int/2addr v1, v4

    xor-int v2, v2, v22

    add-int/2addr v2, v7

    xor-int/2addr v1, v2

    add-int/2addr v6, v1

    const v1, -0x2fa60cf7

    add-int/2addr v3, v1

    :cond_dc
    :goto_dc
    const v1, 0x69ec173c

    goto/16 :goto_1c

    :cond_e1
    const v1, -0xe0dd522

    add-int/2addr v1, v3

    const v2, 0x2fa60cf7

    add-int/2addr v3, v2

    if-ne v4, v5, :cond_dc

    move v3, v1

    goto :goto_dc
.end method
