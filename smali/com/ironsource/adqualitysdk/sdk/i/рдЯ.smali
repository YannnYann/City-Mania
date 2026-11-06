###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0373 (com.ironsource.adqualitysdk.sdk.i.ट)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ट;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾒ(Ljava/lang/String;)[B
    .registers 16

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    .line 3
    div-int/2addr v1, v2

    new-array v3, v1, [B

    .line 4
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ও;->ﾒ:[I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_12
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x3

    if-ge v6, v0, :cond_d9

    if-nez v7, :cond_5f

    :goto_19
    add-int/lit8 v13, v6, 0x4

    if-gt v13, v0, :cond_5b

    .line 5
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v4, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v14, v6, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    shl-int/lit8 v14, v14, 0xc

    or-int/2addr v8, v14

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    shl-int/lit8 v14, v14, 0x6

    or-int/2addr v8, v14

    add-int/lit8 v14, v6, 0x3

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    or-int/2addr v8, v14

    if-ltz v8, :cond_5b

    add-int/lit8 v6, v9, 0x2

    int-to-byte v14, v8

    .line 10
    aput-byte v14, v3, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v14, v8, 0x8

    int-to-byte v14, v14

    .line 11
    aput-byte v14, v3, v6

    shr-int/lit8 v6, v8, 0x10

    int-to-byte v6, v6

    .line 12
    aput-byte v6, v3, v9

    add-int/lit8 v9, v9, 0x3

    move v6, v13

    goto :goto_19

    :cond_5b
    if-lt v6, v0, :cond_5f

    goto/16 :goto_d9

    :cond_5f
    add-int/lit8 v13, v6, 0x1

    .line 19
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v4, v6

    const/4 v14, -0x1

    if-eqz v7, :cond_d0

    if-eq v7, v11, :cond_c7

    const/4 v11, -0x2

    if-eq v7, v10, :cond_b5

    const/4 v10, 0x5

    if-eq v7, v12, :cond_85

    if-eq v7, v2, :cond_7c

    if-eq v7, v10, :cond_78

    goto/16 :goto_d8

    :cond_78
    if-ne v6, v14, :cond_102

    goto/16 :goto_d8

    :cond_7c
    if-ne v6, v11, :cond_82

    :goto_7e
    add-int/lit8 v7, v7, 0x1

    :goto_80
    move v6, v13

    goto :goto_12

    :cond_82
    if-ne v6, v14, :cond_102

    goto :goto_d8

    :cond_85
    if-ltz v6, :cond_a0

    shl-int/lit8 v7, v8, 0x6

    or-int v8, v7, v6

    add-int/lit8 v6, v9, 0x2

    int-to-byte v7, v8

    .line 55
    aput-byte v7, v3, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v8, 0x8

    int-to-byte v7, v7

    .line 56
    aput-byte v7, v3, v6

    shr-int/lit8 v6, v8, 0x10

    int-to-byte v6, v6

    .line 57
    aput-byte v6, v3, v9

    add-int/lit8 v9, v9, 0x3

    move v7, v5

    goto :goto_80

    :cond_a0
    if-ne v6, v11, :cond_b2

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v8, 0x2

    int-to-byte v7, v7

    .line 61
    aput-byte v7, v3, v6

    shr-int/lit8 v6, v8, 0xa

    int-to-byte v6, v6

    .line 62
    aput-byte v6, v3, v9

    add-int/lit8 v9, v9, 0x2

    move v7, v10

    goto :goto_80

    :cond_b2
    if-ne v6, v14, :cond_102

    goto :goto_d8

    :cond_b5
    if-ltz v6, :cond_b8

    goto :goto_c9

    :cond_b8
    if-ne v6, v11, :cond_c4

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v8, 0x4

    int-to-byte v7, v7

    .line 63
    aput-byte v7, v3, v9

    move v7, v2

    move v9, v6

    goto :goto_80

    :cond_c4
    if-ne v6, v14, :cond_102

    goto :goto_d8

    :cond_c7
    if-ltz v6, :cond_cd

    :goto_c9
    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v6

    goto :goto_7e

    :cond_cd
    if-ne v6, v14, :cond_102

    goto :goto_d8

    :cond_d0
    if-ltz v6, :cond_d6

    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto :goto_80

    :cond_d6
    if-ne v6, v14, :cond_102

    :goto_d8
    goto :goto_80

    :cond_d9
    :goto_d9
    if-eq v7, v11, :cond_102

    if-eq v7, v10, :cond_f1

    if-eq v7, v12, :cond_e2

    if-eq v7, v2, :cond_102

    goto :goto_f9

    :cond_e2
    add-int/lit8 p0, v9, 0x1

    shr-int/lit8 v0, v8, 0xa

    int-to-byte v0, v0

    .line 122
    aput-byte v0, v3, v9

    add-int/lit8 v9, v9, 0x2

    shr-int/lit8 v0, v8, 0x2

    int-to-byte v0, v0

    .line 123
    aput-byte v0, v3, p0

    goto :goto_f9

    :cond_f1
    add-int/lit8 p0, v9, 0x1

    shr-int/lit8 v0, v8, 0x4

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v3, v9

    move v9, p0

    :goto_f9
    if-ne v9, v1, :cond_fc

    return-object v3

    .line 125
    :cond_fc
    new-array p0, v9, [B

    .line 126
    invoke-static {v3, v5, p0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 127
    :cond_102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZJbRmZ6iP1ArwYE=\n"

    const-string v1, "Bve1ufzDTDU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
