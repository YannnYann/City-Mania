###### Class info.flowersoft.theotown.util.TileSet (info.flowersoft.theotown.util.TileSet)
.class public Linfo/flowersoft/theotown/util/TileSet;
.super Ljava/lang/Object;
.source "TileSet.java"


# instance fields
.field public maxX:I

.field public maxY:I

.field public meanX:I

.field public meanY:I

.field public minX:I

.field public minY:I

.field public final set:Lcom/badlogic/gdx/utils/IntSet;

.field public final xys:[I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/IntList;)V
    .registers 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    const v0, 0x7fffffff

    .line 58
    iput v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    .line 59
    iput v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    const/high16 v0, -0x80000000

    .line 60
    iput v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    .line 61
    iput v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    .line 62
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    const/4 v0, 0x0

    .line 64
    :goto_20
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 65
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    .line 66
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v2

    .line 67
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v3

    .line 68
    iget v4, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    .line 69
    iget v4, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    .line 70
    iget v4, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    .line 71
    iget v4, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    .line 72
    iget v4, p0, Linfo/flowersoft/theotown/util/TileSet;->meanX:I

    add-int/2addr v4, v2

    iput v4, p0, Linfo/flowersoft/theotown/util/TileSet;->meanX:I

    .line 73
    iget v2, p0, Linfo/flowersoft/theotown/util/TileSet;->meanY:I

    add-int/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/util/TileSet;->meanY:I

    .line 74
    iget-object v2, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    aput v1, v2, v0

    .line 75
    iget-object v2, p0, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 78
    :cond_68
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result p1

    if-lez p1, :cond_80

    .line 79
    iget p1, p0, Linfo/flowersoft/theotown/util/TileSet;->meanX:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/util/TileSet;->meanX:I

    .line 80
    iget p1, p0, Linfo/flowersoft/theotown/util/TileSet;->meanY:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/util/TileSet;->meanY:I

    :cond_80
    return-void
.end method


# virtual methods
.method public boundsContains(II)Z
    .registers 4

    .line 188
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    if-gt v0, p1, :cond_12

    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    if-gt p1, v0, :cond_12

    iget p1, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    if-gt p1, p2, :cond_12

    iget p1, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    if-gt p2, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public contains(II)Z
    .registers 4

    if-ltz p1, :cond_10

    if-gez p2, :cond_5

    goto :goto_10

    .line 179
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public distanceX(II)I
    .registers 4

    .line 162
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    iget p2, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public distanceY(II)I
    .registers 4

    .line 169
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    iget p2, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getCommonArea(Linfo/flowersoft/theotown/util/TileSet;)I
    .registers 6

    .line 197
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/TileSet;->intersectsBoundingBox(Linfo/flowersoft/theotown/util/TileSet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4a

    .line 200
    :cond_14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v2

    if-gt v0, v2, :cond_34

    move v0, v1

    .line 201
    :goto_1f
    iget-object v2, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v3, v2

    if-ge v1, v3, :cond_33

    .line 202
    iget-object v3, p1, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v0

    :cond_34
    move v0, v1

    .line 205
    :goto_35
    iget-object v2, p1, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v3, v2

    if-ge v1, v3, :cond_49

    .line 206
    iget-object v3, p0, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_46

    add-int/lit8 v0, v0, 0x1

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_49
    return v0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public getMaxX()I
    .registers 2

    .line 102
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    return v0
.end method

.method public getMaxY()I
    .registers 2

    .line 109
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    return v0
.end method

.method public getMeanX()I
    .registers 2

    .line 116
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->meanX:I

    return v0
.end method

.method public getMeanY()I
    .registers 2

    .line 123
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->meanY:I

    return v0
.end method

.method public getMinX()I
    .registers 2

    .line 88
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    return v0
.end method

.method public getMinY()I
    .registers 2

    .line 95
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    return v0
.end method

.method public getPackedXY(I)I
    .registers 3

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    aget p1, v0, p1

    return p1
.end method

.method public getX(I)I
    .registers 3

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    aget p1, v0, p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result p1

    return p1
.end method

.method public getY(I)I
    .registers 3

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    aget p1, v0, p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p1

    return p1
.end method

.method public intersects(Linfo/flowersoft/theotown/util/TileSet;)Z
    .registers 7

    .line 219
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/TileSet;->intersectsBoundingBox(Linfo/flowersoft/theotown/util/TileSet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_45

    .line 221
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v0, v0

    iget-object v2, p1, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_31

    move v0, v1

    .line 222
    :goto_1e
    iget-object v2, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v4, v2

    if-ge v0, v4, :cond_45

    .line 223
    iget-object v4, p1, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    aget v2, v2, v0

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    return v3

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_31
    move v0, v1

    .line 226
    :goto_32
    iget-object v2, p1, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v4, v2

    if-ge v0, v4, :cond_45

    .line 227
    iget-object v4, p0, Linfo/flowersoft/theotown/util/TileSet;->set:Lcom/badlogic/gdx/utils/IntSet;

    aget v2, v2, v0

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_42

    return v3

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_45
    :goto_45
    return v1
.end method

.method public intersectsBoundingBox(Linfo/flowersoft/theotown/util/TileSet;)Z
    .registers 4

    .line 239
    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    iget v1, p1, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    if-lt v0, v1, :cond_1a

    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    iget v1, p1, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    if-lt v0, v1, :cond_1a

    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minX:I

    iget v1, p1, Linfo/flowersoft/theotown/util/TileSet;->maxX:I

    if-gt v0, v1, :cond_1a

    iget v0, p0, Linfo/flowersoft/theotown/util/TileSet;->minY:I

    iget p1, p1, Linfo/flowersoft/theotown/util/TileSet;->maxY:I

    if-gt v0, p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/util/TileSet;->xys:[I

    array-length v0, v0

    return v0
.end method
