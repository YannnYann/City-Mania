###### Class ads_mobile_sdk.e34 (ads_mobile_sdk.e34)
.class public final Lads_mobile_sdk/e34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/c34;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/p34;I)B
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lads_mobile_sdk/p34;->a(I)B

    move-result p1

    return p1
.end method

.method public final a()Lads_mobile_sdk/c34;
    .registers 2

    .line 9
    new-instance v0, Lads_mobile_sdk/e34;

    invoke-direct {v0}, Lads_mobile_sdk/e34;-><init>()V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/p34;II)Lads_mobile_sdk/p34;
    .registers 7

    if-ltz p2, :cond_27

    if-gt p2, p3, :cond_27

    .line 3
    iget-object p1, p1, Lads_mobile_sdk/p34;->a:[B

    .line 4
    array-length v0, p1

    if-gt p3, v0, :cond_27

    if-gt p2, p3, :cond_21

    .line 5
    array-length v0, p1

    if-gt p3, v0, :cond_21

    sub-int/2addr p3, p2

    .line 6
    new-instance v0, Lads_mobile_sdk/p34;

    const/4 v1, 0x0

    if-nez p3, :cond_17

    .line 7
    new-array p1, v1, [B

    goto :goto_1d

    :cond_17
    new-array v2, p3, [B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 8
    :goto_1d
    invoke-direct {v0, p1}, Lads_mobile_sdk/p34;-><init>([B)V

    return-object v0

    :cond_21
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_27
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
