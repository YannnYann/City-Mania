###### Class ads_mobile_sdk.iy3 (ads_mobile_sdk.iy3)
.class public interface abstract Lads_mobile_sdk/iy3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b()[B
    .registers 11

    const v0, 0x5b25ace2

    not-int v1, v0

    const v2, 0x70a0790

    and-int/2addr v1, v2

    const v2, 0x330b0e

    or-int/2addr v1, v2

    const v2, 0x27280493

    and-int/2addr v0, v2

    const v2, 0x30f56b4f

    or-int/2addr v0, v2

    const v2, 0x4313a8dd

    const v3, 0xb046bd4

    .line 2
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x3dd15094

    const v2, 0x3db012b3

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    int-to-short v0, v0

    const/16 v1, 0x9

    .line 3
    new-array v1, v1, [I

    fill-array-data v1, :array_6e

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v0, 0x4678ca32

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    nop

    :array_6e
    .array-data 4
        0x14e17e33
        0x4038e8a2
        0x68db0d72
        0x120e080
        0x2dd61648
        0x6e240f69
        0x1748396
        0x76272110
        0x4c04a8af    # 3.477574E7f
    .end array-data
.end method
