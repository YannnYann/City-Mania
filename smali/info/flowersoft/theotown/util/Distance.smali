###### Class info.flowersoft.theotown.util.Distance (info.flowersoft.theotown.util.Distance)
.class public abstract Linfo/flowersoft/theotown/util/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(II)I
.end method

.method public get(IIII)I
    .registers 5

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 14
    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/util/Distance;->get(II)I

    move-result p1

    return p1
.end method

.method public get(IIIIII)I
    .registers 8

    sub-int v0, p3, p1

    sub-int/2addr p1, p3

    sub-int/2addr p1, p5

    add-int/lit8 p1, p1, 0x1

    .line 35
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/Distance;->positive(I)I

    move-result p1

    sub-int p3, p4, p2

    sub-int/2addr p2, p4

    sub-int/2addr p2, p6

    add-int/lit8 p2, p2, 0x1

    .line 36
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/Distance;->positive(I)I

    move-result p2

    .line 34
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/Distance;->get(II)I

    move-result p1

    return p1
.end method

.method public get(IILinfo/flowersoft/theotown/city/MapArea;)I
    .registers 12

    .line 40
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/MapArea;->getParcelBoundingBox()[I

    move-result-object p3

    const/4 v0, 0x0

    .line 41
    aget v0, p3, v0

    div-int/lit8 v4, v0, 0x2

    const/4 v1, 0x1

    aget v2, p3, v1

    div-int/lit8 v5, v2, 0x2

    const/4 v3, 0x2

    aget v6, p3, v3

    sub-int/2addr v6, v0

    add-int/2addr v6, v1

    div-int/2addr v6, v3

    const/4 v0, 0x3

    aget p3, p3, v0

    sub-int/2addr p3, v2

    add-int/2addr p3, v1

    div-int/lit8 v7, p3, 0x2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/util/Distance;->get(IIIIII)I

    move-result p1

    return p1
.end method

.method public get(Linfo/flowersoft/theotown/city/objects/Building;II)I
    .registers 6

    .line 19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/Distance;->positive(I)I

    move-result p2

    .line 20
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/Distance;->positive(I)I

    move-result p1

    .line 18
    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/util/Distance;->get(II)I

    move-result p1

    return p1
.end method

.method public get(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 6

    .line 26
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    add-int/2addr v1, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/Distance;->positive(I)I

    move-result v0

    .line 28
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    add-int/2addr v1, v2

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    add-int/2addr v2, p1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/Distance;->positive(I)I

    move-result p1

    .line 25
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/Distance;->get(II)I

    move-result p1

    return p1
.end method

.method public positive(I)I
    .registers 2

    .line 0
    if-ltz p1, :cond_3

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
