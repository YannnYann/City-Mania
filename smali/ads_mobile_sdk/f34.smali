###### Class ads_mobile_sdk.f34 (ads_mobile_sdk.f34)
.class public final Lads_mobile_sdk/f34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/c34;


# instance fields
.field public a:I

.field public final b:[B

.field public final c:Lads_mobile_sdk/h34;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h34;)V
    .registers 6

    const v0, 0x5bc9a827

    not-int v1, v0

    const v2, 0x7b6460e3

    and-int/2addr v1, v2

    const v2, 0x419f187d

    or-int/2addr v1, v2

    const v2, -0x45871f66

    and-int/2addr v0, v2

    const v2, -0x7fe361c7

    or-int/2addr v0, v2

    const v2, 0x9c8225e

    const v3, 0x40972fd

    .line 1
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x44296c6d

    const v2, 0x3a86d445

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lads_mobile_sdk/f34;->a:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lads_mobile_sdk/f34;->b:[B

    iput-object p1, p0, Lads_mobile_sdk/f34;->c:Lads_mobile_sdk/h34;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/p34;I)B
    .registers 7

    const v0, 0x8885ee1

    not-int v1, v0

    const v2, 0x3b285280

    and-int/2addr v1, v2

    const v2, 0x1a31be66

    or-int/2addr v1, v2

    const v2, 0x61084082

    and-int/2addr v0, v2

    const v2, 0x4846107f

    or-int/2addr v0, v2

    const v2, -0x746d643

    const v3, 0x754bdbd7

    .line 1
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x792d654e

    const v2, 0x42d0e7a

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int v0, p2, v0

    iget v1, p0, Lads_mobile_sdk/f34;->a:I

    if-eq v0, v1, :cond_35

    iget-object v1, p0, Lads_mobile_sdk/f34;->c:Lads_mobile_sdk/h34;

    iget-object v2, p0, Lads_mobile_sdk/f34;->b:[B

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/h34;->a([BI)V

    iput v0, p0, Lads_mobile_sdk/f34;->a:I

    :cond_35
    invoke-virtual {p1, p2}, Lads_mobile_sdk/p34;->a(I)B

    move-result p1

    iget-object v0, p0, Lads_mobile_sdk/f34;->b:[B

    rem-int/lit8 p2, p2, 0x8

    aget-byte p2, v0, p2

    xor-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x18

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    return p1
.end method

.method public final bridge synthetic a()Lads_mobile_sdk/c34;
    .registers 3

    .line 10
    new-instance v0, Lads_mobile_sdk/f34;

    iget-object v1, p0, Lads_mobile_sdk/f34;->c:Lads_mobile_sdk/h34;

    invoke-direct {v0, v1}, Lads_mobile_sdk/f34;-><init>(Lads_mobile_sdk/h34;)V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/p34;II)Lads_mobile_sdk/p34;
    .registers 9

    if-ltz p2, :cond_2c

    if-gt p2, p3, :cond_2c

    .line 3
    iget-object v0, p1, Lads_mobile_sdk/p34;->a:[B

    .line 4
    array-length v0, v0

    if-gt p3, v0, :cond_2c

    sub-int v0, p3, p2

    .line 5
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge p2, p3, :cond_1c

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/f34;->a(Lads_mobile_sdk/p34;I)B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6
    :cond_1c
    new-instance p1, Lads_mobile_sdk/p34;

    if-nez v0, :cond_23

    .line 7
    new-array p2, v2, [B

    goto :goto_28

    :cond_23
    new-array p2, v0, [B

    invoke-static {v1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :goto_28
    invoke-direct {p1, p2}, Lads_mobile_sdk/p34;-><init>([B)V

    return-object p1

    .line 9
    :cond_2c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
