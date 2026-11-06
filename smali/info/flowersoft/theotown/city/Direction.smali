###### Class info.flowersoft.theotown.city.Direction (info.flowersoft.theotown.city.Direction)
.class public final Linfo/flowersoft/theotown/city/Direction;
.super Ljava/lang/Object;
.source "Direction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static axis(I)I
    .registers 3

    .line 0
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static countDirections(I)I
    .registers 2

    .line 0
    and-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x4

    shr-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    return v0
.end method

.method public static cut(II)I
    .registers 2

    .line 0
    and-int/2addr p0, p1

    return p0
.end method

.method public static differenceX(I)I
    .registers 2

    .line 0
    shl-int/lit8 v0, p0, 0x1d

    shr-int/lit8 v0, v0, 0x1f

    and-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static differenceY(I)I
    .registers 2

    .line 0
    shl-int/lit8 v0, p0, 0x1c

    shr-int/lit8 v0, v0, 0x1f

    shr-int/lit8 p0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static fromDifferential(II)I
    .registers 3

    .line 0
    neg-int v0, p0

    ushr-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    neg-int v0, p1

    ushr-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static fromIndex(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method public static inverse(I)I
    .registers 1

    .line 0
    rsub-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static inverseRotation(I)I
    .registers 1

    rsub-int/lit8 p0, p0, 0x4

    .line 48
    rem-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static isCorner(I)Z
    .registers 3

    .line 32
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v0

    if-eq v0, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isIn(II)Z
    .registers 2

    .line 0
    or-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isSymmetric(I)Z
    .registers 2

    .line 100
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static opposite(I)I
    .registers 2

    .line 0
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v0

    return p0
.end method

.method public static rotateCCW(II)I
    .registers 3

    .line 0
    shl-int v0, p0, p1

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p0, p0, 0xf

    rsub-int/lit8 p1, p1, 0x4

    shr-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static rotateCW(II)I
    .registers 3

    .line 0
    and-int/lit8 v0, p0, 0xf

    shr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x4

    shl-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    add-int/2addr v0, p0

    return v0
.end method

.method public static toIndex(I)I
    .registers 3

    .line 0
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    and-int/lit8 p0, v0, 0x3

    return p0
.end method

.method public static turnCCW(I)I
    .registers 2

    .line 0
    shr-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 p0, p0, 0x1

    and-int/lit8 p0, p0, 0xf

    add-int/2addr v0, p0

    return v0
.end method

.method public static turnCW(I)I
    .registers 2

    .line 0
    and-int/lit8 v0, p0, 0x1

    shl-int/lit8 v0, v0, 0x3

    shr-int/lit8 p0, p0, 0x1

    and-int/lit8 p0, p0, 0x7

    add-int/2addr v0, p0

    return v0
.end method

.method public static union(II)I
    .registers 2

    .line 0
    or-int/2addr p0, p1

    return p0
.end method
