###### Class info.flowersoft.theotown.city.modifier.TerrainBuilder (info.flowersoft.theotown.city.modifier.TerrainBuilder)
.class public Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;
.super Ljava/lang/Object;
.source "TerrainBuilder.java"


# instance fields
.field public buildable:Z

.field public calculated:Z

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public movedEarth:I

.field public final targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public final xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

.field public final xySet:Lcom/badlogic/gdx/utils/IntSet;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 21
    new-instance v0, Lio/blueflower/stapel2d/util/IntQueue;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntQueue;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

    .line 22
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xySet:Lcom/badlogic/gdx/utils/IntSet;

    .line 28
    iget-object v0, p1, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 29
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    return-void
.end method


# virtual methods
.method public addTarget(III)V
    .registers 5

    .line 42
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    if-nez v0, :cond_15

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    add-int/lit8 v0, p1, 0x1

    .line 44
    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    add-int/lit8 p2, p2, 0x1

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    .line 46
    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    return-void

    .line 42
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You have to apply or clear after calculation is done"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTargetShifted(III)V
    .registers 6

    .line 50
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    if-nez v0, :cond_8a

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v0

    if-lez p3, :cond_50

    float-to-double v0, v0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, p3

    .line 55
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result p3

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    add-int/lit8 p3, p1, 0x1

    .line 56
    invoke-virtual {p0, p3, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p3, p2, v1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    add-int/lit8 p2, p2, 0x1

    .line 57
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    .line 58
    invoke-virtual {p0, p3, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p3, p2, p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    return-void

    :cond_50
    if-gez p3, :cond_89

    float-to-double v0, v0

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, p3

    .line 61
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result p3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    add-int/lit8 p3, p1, 0x1

    .line 62
    invoke-virtual {p0, p3, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p3, p2, v1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    add-int/lit8 p2, p2, 0x1

    .line 63
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    .line 64
    invoke-virtual {p0, p3, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p3, p2, p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    :cond_89
    return-void

    .line 50
    :cond_8a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You have to apply or clear after calculation is done"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply()V
    .registers 11

    .line 225
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    if-eqz v0, :cond_d1

    .line 226
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    if-eqz v0, :cond_c9

    .line 228
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->movedEarth:I

    if-lez v0, :cond_c5

    .line 229
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 230
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntIntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 231
    iget v3, v2, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {v3}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v3

    .line 232
    iget v4, v2, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {v4}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v4

    .line 233
    iget v2, v2, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    .line 234
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4f

    .line 235
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    int-to-byte v7, v2

    invoke-virtual {v5, v6, v6, v7}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    .line 236
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 238
    :cond_4f
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_6f

    .line 239
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    int-to-byte v9, v2

    invoke-virtual {v5, v8, v6, v9}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    .line 240
    invoke-static {v7, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 242
    :cond_6f
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 243
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    int-to-byte v9, v2

    invoke-virtual {v5, v6, v8, v9}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    .line 244
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 246
    :cond_8e
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v7, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 247
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v7, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    int-to-byte v2, v2

    invoke-virtual {v3, v8, v8, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    .line 248
    invoke-static {v7, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto/16 :goto_17

    .line 252
    :cond_ad
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v0

    .line 253
    :goto_b1
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_c5

    .line 254
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    .line 255
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v2

    .line 256
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v1

    .line 257
    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->postProcessTile(II)V

    goto :goto_b1

    .line 261
    :cond_c5
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    return-void

    .line 226
    :cond_c9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not buildable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You have to calculate it first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculate()V
    .registers 11

    .line 135
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    if-nez v0, :cond_162

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 138
    iget v3, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {v3}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v3

    .line 139
    iget v4, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {v4}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v4

    .line 140
    iget v1, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    .line 141
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v5

    if-eq v1, v5, :cond_a

    if-ltz v1, :cond_41

    const/16 v5, 0xf

    if-le v1, v5, :cond_32

    goto :goto_41

    .line 146
    :cond_32
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v1

    .line 147
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    .line 148
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xySet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_a

    .line 143
    :cond_41
    :goto_41
    iput-boolean v2, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    .line 152
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11c

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    if-eqz v0, :cond_11c

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntQueue;->remove()I

    move-result v0

    .line 154
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xySet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    .line 155
    invoke-static {v0}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v3

    .line 156
    invoke-static {v0}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v0

    .line 157
    invoke-virtual {p0, v3, v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getTargetHeight(II)I

    move-result v4

    .line 158
    invoke-virtual {p0, v3, v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v5

    if-ne v4, v5, :cond_6f

    goto/16 :goto_11c

    .line 161
    :cond_6f
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 162
    iget-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    invoke-virtual {p0, v3, v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->canModify(II)Z

    move-result v6

    and-int/2addr v5, v6

    iput-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    .line 164
    :cond_80
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 165
    iget-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    invoke-virtual {p0, v6, v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->canModify(II)Z

    move-result v7

    and-int/2addr v5, v7

    iput-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    .line 167
    :cond_93
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v5, v3, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 168
    iget-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    invoke-virtual {p0, v3, v7}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->canModify(II)Z

    move-result v8

    and-int/2addr v5, v8

    iput-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    .line 170
    :cond_a6
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 171
    iget-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    invoke-virtual {p0, v6, v7}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->canModify(II)Z

    move-result v6

    and-int/2addr v5, v6

    iput-boolean v5, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    :cond_b7
    move v5, v2

    :goto_b8
    const/16 v6, 0x8

    if-ge v5, v6, :cond_43

    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-lt v5, v7, :cond_c9

    if-ge v5, v8, :cond_c9

    add-int/lit8 v6, v5, -0x3

    move v8, v6

    move v6, v1

    goto :goto_d7

    :cond_c9
    const/4 v7, 0x7

    if-lt v5, v8, :cond_d2

    if-ge v5, v7, :cond_d2

    rsub-int/lit8 v6, v5, 0x5

    move v8, v1

    goto :goto_d7

    :cond_d2
    const/4 v8, -0x1

    if-ne v5, v7, :cond_d7

    move v6, v8

    move v8, v2

    :cond_d7
    :goto_d7
    add-int/2addr v6, v3

    add-int/2addr v8, v0

    if-ltz v6, :cond_119

    if-ltz v8, :cond_119

    .line 189
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_119

    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v7

    if-gt v8, v7, :cond_119

    .line 190
    invoke-virtual {p0, v6, v8}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getTargetHeight(II)I

    move-result v7

    sub-int v9, v4, v7

    .line 191
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v1, :cond_119

    if-le v4, v7, :cond_fe

    add-int/lit8 v7, v4, -0x1

    goto :goto_100

    :cond_fe
    add-int/lit8 v7, v4, 0x1

    .line 193
    :goto_100
    invoke-virtual {p0, v6, v8, v7}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->setTargetHeight(III)V

    .line 194
    invoke-static {v6, v8}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v6

    .line 195
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xySet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_119

    .line 196
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v7, v6}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    .line 197
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xySet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    :cond_119
    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    .line 203
    :cond_11c
    :goto_11c
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xyQueue:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntQueue;->clear()V

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->xySet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 207
    iget v4, v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {v4}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v4

    .line 208
    iget v5, v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {v5}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v5

    .line 209
    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->movedEarth:I

    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result v4

    iget v3, v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v6, v3

    iput v6, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->movedEarth:I

    goto :goto_12c

    .line 212
    :cond_155
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->movedEarth:I

    if-lez v3, :cond_15c

    move v2, v1

    :cond_15c
    and-int/2addr v0, v2

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    .line 213
    iput-boolean v1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    return-void

    .line 135
    :cond_162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already calculated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final canModify(II)Z
    .registers 6

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 104
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getBorderFrame()B

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_66

    .line 109
    :cond_27
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 110
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v0, :cond_38

    return v1

    .line 114
    :cond_38
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 115
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->supportsSlope:Z

    if-nez v0, :cond_49

    return v1

    .line 119
    :cond_49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasRoad(II)Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    .line 123
    :cond_52
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v0

    if-eqz v0, :cond_5b

    return v1

    .line 127
    :cond_5b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    if-eqz p1, :cond_64

    return v1

    :cond_64
    const/4 p1, 0x1

    return p1

    :cond_66
    :goto_66
    return v1
.end method

.method public clear()V
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->movedEarth:I

    .line 37
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    return-void
.end method

.method public final getActualHeight(II)I
    .registers 8

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result p1

    return p1

    .line 88
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_34

    .line 89
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1, v4, v4}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result p1

    return p1

    .line 90
    :cond_34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 91
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result p1

    return p1

    .line 92
    :cond_4b
    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, p1, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 93
    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result p1

    return p1

    :cond_62
    return v1
.end method

.method public getMovedEarth()I
    .registers 2

    .line 221
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->movedEarth:I

    return v0
.end method

.method public final getTargetHeight(II)I
    .registers 5

    .line 70
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v0

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 72
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1

    return p1

    .line 74
    :cond_14
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getActualHeight(II)I

    move-result p1

    return p1
.end method

.method public isBuildable()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->buildable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculated:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final postProcessTile(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public final setTargetHeight(III)V
    .registers 5

    const/4 v0, 0x0

    .line 79
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/16 v0, 0xf

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ltz p1, :cond_28

    if-ltz p2, :cond_28

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_28

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->targetHeights:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :cond_28
    return-void
.end method
