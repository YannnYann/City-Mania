###### Class ads_mobile_sdk.c (ads_mobile_sdk.c)
.class public final Lads_mobile_sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 8

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 16
    new-array v1, v0, [B

    iput-object v1, p0, Lads_mobile_sdk/c;->a:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_15

    .line 22
    iget-object v3, p0, Lads_mobile_sdk/c;->a:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    move v2, v1

    :goto_16
    if-ge v1, v0, :cond_2e

    .line 25
    iget-object v3, p0, Lads_mobile_sdk/c;->a:[B

    aget-byte v4, v3, v1

    add-int/2addr v2, v4

    array-length v5, p1

    rem-int v5, v1, v5

    aget-byte v5, p1, v5

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    .line 28
    aget-byte v5, v3, v2

    aput-byte v5, v3, v1

    .line 29
    aput-byte v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2e
    return-void
.end method
