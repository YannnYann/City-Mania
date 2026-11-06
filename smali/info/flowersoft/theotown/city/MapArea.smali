###### Class info.flowersoft.theotown.city.MapArea (info.flowersoft.theotown.city.MapArea)
.class public Linfo/flowersoft/theotown/city/MapArea;
.super Ljava/lang/Object;
.source "MapArea.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public boundingBox:[I

.field public final parcels:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    return-void
.end method


# virtual methods
.method public add(III)V
    .registers 5

    if-ltz p1, :cond_19

    if-ltz p2, :cond_19

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_19

    mul-int/lit8 p2, p2, 0x2

    if-le p2, v0, :cond_f

    goto :goto_19

    .line 96
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/MapArea;->addParcel(III)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/MapArea;->addParcel(III)V

    :cond_19
    :goto_19
    return-void
.end method

.method public add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V
    .registers 15

    .line 101
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/MapArea;->addOutlineRect(IIIII)V

    if-eqz p3, :cond_2c

    .line 103
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v9

    move v10, v5

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/city/MapArea;->addRect(IIIII)V

    :cond_2c
    return-void
.end method

.method public add(Linfo/flowersoft/theotown/city/objects/Building;Z)V
    .registers 7

    .line 108
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMinTerrainLevel()I

    move-result v1

    iget v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMinLevel:I

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 111
    :goto_10
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v2

    iget v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMaxLevel:I

    add-int/2addr v2, v3

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v1, v2, :cond_25

    .line 114
    invoke-virtual {p0, p1, v1, p2}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    return-void
.end method

.method public addObject(Linfo/flowersoft/theotown/city/Tiles;III)V
    .registers 6

    .line 79
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 80
    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;Z)V

    return-void

    :cond_f
    if-eqz p1, :cond_15

    .line 85
    invoke-virtual {p0, p2, p3, p4}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-void

    :cond_15
    add-int/lit8 p1, p2, -0x1

    .line 87
    invoke-virtual {p0, p1, p3, p4}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 p1, p2, 0x1

    .line 88
    invoke-virtual {p0, p1, p3, p4}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 p1, p3, -0x1

    .line 89
    invoke-virtual {p0, p2, p1, p4}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 p3, p3, 0x1

    .line 90
    invoke-virtual {p0, p2, p3, p4}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-void
.end method

.method public addOutlineRect(IIIII)V
    .registers 8

    move v0, p1

    :goto_1
    add-int v1, p1, p3

    if-ge v0, v1, :cond_12

    add-int/lit8 v1, p2, -0x1

    .line 128
    invoke-virtual {p0, v0, v1, p5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int v1, p2, p4

    .line 129
    invoke-virtual {p0, v0, v1, p5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    move p3, p2

    :goto_13
    add-int v0, p2, p4

    if-ge p3, v0, :cond_22

    add-int/lit8 v0, p1, -0x1

    .line 132
    invoke-virtual {p0, v0, p3, p5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 133
    invoke-virtual {p0, v1, p3, p5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_13

    :cond_22
    return-void
.end method

.method public addParcel(III)V
    .registers 5

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x18

    or-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    return-void
.end method

.method public addRect(IIIII)V
    .registers 9

    move v0, p2

    :goto_1
    add-int v1, p2, p4

    if-ge v0, v1, :cond_13

    move v1, p1

    :goto_6
    add-int v2, p1, p3

    if-ge v1, v2, :cond_10

    .line 121
    invoke-virtual {p0, v1, v0, p5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public countParcels()I
    .registers 2

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public getCenterX()F
    .registers 4

    .line 159
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelBoundingBox()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .registers 5

    .line 164
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelBoundingBox()[I

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    aget v2, v0, v1

    const/4 v3, 0x3

    aget v0, v0, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getParcelBoundingBox()[I
    .registers 8

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    if-nez v0, :cond_4f

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 170
    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    const/4 v0, 0x0

    move v1, v0

    .line 172
    :goto_11
    iget-object v2, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 173
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/MapArea;->getParcelX(I)I

    move-result v2

    .line 174
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/MapArea;->getParcelY(I)I

    move-result v3

    .line 175
    iget-object v4, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    aget v5, v4, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v4, v0

    .line 176
    iget-object v4, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    const/4 v5, 0x1

    aget v6, v4, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v4, v5

    .line 177
    iget-object v4, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    const/4 v5, 0x2

    aget v6, v4, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v4, v5

    .line 178
    iget-object v2, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    const/4 v4, 0x3

    aget v5, v2, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 182
    :cond_4f
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->boundingBox:[I

    return-object v0
.end method

.method public getParcelDistanceBB(II)I
    .registers 6

    .line 193
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelBoundingBox()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    aget v1, v0, v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    aget v2, v0, v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    .line 195
    aget v1, v0, v1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    aget v0, v0, v2

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public getParcelLevel(I)I
    .registers 3

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    shr-int/lit8 p1, p1, 0x18

    return p1
.end method

.method public getParcelX(I)I
    .registers 3

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    ushr-int/lit8 p1, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    return p1
.end method

.method public getParcelY(I)I
    .registers 3

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xfff

    return p1
.end method

.method public intersectsBB(Linfo/flowersoft/theotown/city/MapArea;)Z
    .registers 9

    .line 186
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelBoundingBox()[I

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapArea;->getParcelBoundingBox()[I

    move-result-object p1

    const/4 v1, 0x2

    .line 189
    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-lt v2, v4, :cond_25

    const/4 v2, 0x3

    aget v4, v0, v2

    const/4 v5, 0x1

    aget v6, p1, v5

    if-lt v4, v6, :cond_25

    aget v4, v0, v3

    aget v1, p1, v1

    if-gt v4, v1, :cond_25

    aget v0, v0, v5

    aget p1, p1, v2

    if-gt v0, p1, :cond_25

    return v5

    :cond_25
    return v3
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 34
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 35
    :goto_a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    .line 37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/city/MapArea;->addParcel(III)V

    goto :goto_a

    .line 40
    :cond_1d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    return-void

    .line 42
    :cond_21
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 43
    :goto_24
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "xyl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_24

    .line 46
    :cond_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 47
    :goto_40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    .line 49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    .line 50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    .line 51
    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/city/MapArea;->addParcel(III)V

    goto :goto_40

    .line 53
    :cond_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_24

    .line 60
    :cond_5a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 67
    const-string v0, "xyl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 69
    :goto_c
    iget-object v1, p0, Linfo/flowersoft/theotown/city/MapArea;->parcels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 70
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelX(I)I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 71
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelY(I)I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 72
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelLevel(I)I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 74
    :cond_2c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 75
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
