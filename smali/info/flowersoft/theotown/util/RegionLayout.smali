###### Class info.flowersoft.theotown.util.RegionLayout (info.flowersoft.theotown.util.RegionLayout)
.class public Linfo/flowersoft/theotown/util/RegionLayout;
.super Ljava/lang/Object;
.source "RegionLayout.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public divisors:Lio/blueflower/stapel2d/util/IntList;

.field public enabled:Lio/blueflower/stapel2d/util/IntList;

.field public maxAllowedDivisor:I

.field public maxDivisor:I

.field public xLocations:Lio/blueflower/stapel2d/util/IntList;

.field public yLocations:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 13
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 14
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    .line 15
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    const/16 v0, 0x8

    .line 17
    iput v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    .line 20
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->reset()V

    return-void
.end method


# virtual methods
.method public canDivide(II)Z
    .registers 3

    .line 185
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result p1

    mul-int/2addr p1, p2

    iget p2, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    if-gt p1, p2, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public canMerge(I)Z
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->collectNeighboringIndices(I)[I

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public clone()Linfo/flowersoft/theotown/util/RegionLayout;
    .registers 3

    .line 235
    new-instance v0, Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/RegionLayout;-><init>()V

    .line 236
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 237
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 238
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    .line 239
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    .line 240
    iget v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    iput v1, v0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->clone()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    return-object v0
.end method

.method public final collectNeighboringIndices(I)[I
    .registers 9

    .line 94
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result v1

    .line 96
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getX(I)I

    move-result v2

    .line 97
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getY(I)I

    move-result p1

    .line 98
    iget v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    div-int/2addr v3, v1

    const/4 v4, 0x0

    .line 100
    :goto_15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 101
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/RegionLayout;->getX(I)I

    move-result v5

    if-lt v5, v2, :cond_40

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/RegionLayout;->getY(I)I

    move-result v5

    if-lt v5, p1, :cond_40

    .line 102
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/RegionLayout;->getX(I)I

    move-result v5

    add-int v6, v2, v3

    if-gt v5, v6, :cond_40

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/RegionLayout;->getY(I)I

    move-result v5

    add-int v6, p1, v3

    if-gt v5, v6, :cond_40

    .line 103
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result v5

    if-ne v5, v1, :cond_40

    .line 104
    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 108
    :cond_43
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object p1

    return-object p1

    :cond_4f
    const/4 p1, 0x0

    return-object p1
.end method

.method public countEnabledCells()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 123
    :goto_2
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 124
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method public countPlaces()I
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public divide(II)I
    .registers 12

    .line 189
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result v0

    mul-int/2addr v0, p2

    .line 190
    iget v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    if-le v0, v1, :cond_c

    .line 191
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/RegionLayout;->divideRaw(I)V

    .line 194
    :cond_c
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v1

    .line 195
    iget-object v2, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v2

    .line 196
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v3

    .line 197
    iget-object v4, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 198
    iget-object p1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    const/4 v4, 0x0

    move v5, v4

    :goto_2b
    if-ge v5, p2, :cond_54

    move v6, v4

    :goto_2e
    if-ge v6, p2, :cond_51

    .line 201
    iget-object v7, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    iget v8, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    mul-int/2addr v8, v6

    div-int/2addr v8, v0

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 202
    iget-object v7, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    iget v8, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    mul-int/2addr v8, v5

    div-int/2addr v8, v0

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 203
    iget-object v7, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 204
    iget-object v7, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_54
    return p1
.end method

.method public final divideRaw(I)V
    .registers 5

    .line 245
    iget v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    mul-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    const/4 v0, 0x0

    .line 246
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 247
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 248
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_23
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 213
    instance-of v0, p1, Linfo/flowersoft/theotown/util/RegionLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 214
    check-cast p1, Linfo/flowersoft/theotown/util/RegionLayout;

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p1, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p1, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 216
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p1, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    .line 217
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p1, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    .line 218
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    iget p1, p1, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    if-ne v0, p1, :cond_37

    const/4 p1, 0x1

    return p1

    :cond_37
    return v1
.end method

.method public fromJSON(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 260
    const-string v0, "xyde"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 261
    const-string v1, "stride"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 262
    :goto_21
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 263
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 264
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 265
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 266
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/2addr v2, v1

    goto :goto_21

    .line 268
    :cond_53
    const-string v0, "max divisor"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    .line 269
    const-string v0, "max allowed divisor"

    iget v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    return-void
.end method

.method public getCellIndex(FF)I
    .registers 6

    const/4 v0, 0x0

    .line 83
    :goto_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 84
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeX(I)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeY(I)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_32

    .line 85
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeX(I)F

    move-result v1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeSize(I)F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_32

    .line 86
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeY(I)F

    move-result v1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeSize(I)F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_32

    return v0

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_35
    const/4 p1, -0x1

    return p1
.end method

.method public getDivisor(I)I
    .registers 3

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getEnabled(I)Z
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    if-lez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxDivisor()I
    .registers 2

    .line 75
    iget v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    return v0
.end method

.method public getMaxUsedDivisor()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_2
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 132
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 133
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method public getRelativeSize(I)F
    .registers 3

    .line 63
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public getRelativeX(I)F
    .registers 3

    .line 55
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getX(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->getMaxDivisor()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public getRelativeY(I)F
    .registers 3

    .line 59
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->getY(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->getMaxDivisor()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public getX(I)I
    .registers 3

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getY(I)I
    .registers 3

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public isValid()Z
    .registers 3

    .line 140
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->countEnabledCells()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->getMaxUsedDivisor()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public merge(I)I
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->collectNeighboringIndices(I)[I

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/RegionLayout;->merge([I)I

    move-result p1

    return p1
.end method

.method public merge([I)I
    .registers 12

    if-eqz p1, :cond_9b

    .line 147
    array-length v0, p1

    if-eqz v0, :cond_9b

    .line 148
    iget v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    .line 152
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    .line 154
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    move v3, v2

    move v4, v3

    move v5, v4

    move v2, v0

    .line 155
    :goto_17
    array-length v6, p1

    if-ge v3, v6, :cond_53

    if-lez v3, :cond_2d

    add-int/lit8 v6, v3, -0x1

    .line 156
    aget v6, p1, v6

    aget v7, p1, v3

    if-eq v6, v7, :cond_25

    goto :goto_2d

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "indices may not contain duplicates"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_2d
    :goto_2d
    aget v6, p1, v3

    .line 158
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/util/RegionLayout;->getX(I)I

    move-result v7

    .line 159
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/util/RegionLayout;->getY(I)I

    move-result v8

    .line 160
    iget v9, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result v6

    div-int/2addr v9, v6

    .line 161
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 162
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v7, v9

    .line 163
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v8, v9

    .line 164
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_53
    sub-int/2addr v4, v0

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_93

    .line 168
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    :goto_5a
    if-ltz v3, :cond_75

    .line 169
    aget v5, p1, v3

    .line 170
    iget-object v6, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 171
    iget-object v6, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 172
    iget-object v6, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 173
    iget-object v6, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    add-int/lit8 v3, v3, -0x1

    goto :goto_5a

    .line 176
    :cond_75
    iget-object p1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    .line 177
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    iget v2, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    div-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return p1

    .line 166
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Merge area must be a square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "indices may not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 4

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 31
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 33
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v0, 0x8

    .line 35
    iput v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    return-void
.end method

.method public setEnabled(IZ)V
    .registers 4

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method public setMaxAllowedDivisor(I)V
    .registers 2

    .line 79
    iput p1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    return-void
.end method

.method public setTo(Linfo/flowersoft/theotown/util/RegionLayout;)V
    .registers 3

    .line 226
    iget-object v0, p1, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 227
    iget-object v0, p1, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    .line 228
    iget-object v0, p1, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    .line 229
    iget-object v0, p1, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    .line 230
    iget p1, p1, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    iput p1, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    return-void
.end method

.method public toJSON()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 273
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 274
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 275
    :goto_b
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 276
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->xLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 277
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->yLocations:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 278
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->divisors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 279
    iget-object v3, p0, Linfo/flowersoft/theotown/util/RegionLayout;->enabled:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 281
    :cond_3a
    const-string v2, "xyde"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 282
    const-string v1, "stride"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 283
    const-string v1, "max divisor"

    iget v2, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxDivisor:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 284
    const-string v1, "max allowed divisor"

    iget v2, p0, Linfo/flowersoft/theotown/util/RegionLayout;->maxAllowedDivisor:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method
