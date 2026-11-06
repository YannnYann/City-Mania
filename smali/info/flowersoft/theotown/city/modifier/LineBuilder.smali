###### Class info.flowersoft.theotown.city.modifier.LineBuilder (info.flowersoft.theotown.city.modifier.LineBuilder)
.class public abstract Linfo/flowersoft/theotown/city/modifier/LineBuilder;
.super Ljava/lang/Object;
.source "LineBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;,
        Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;,
        Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;
    }
.end annotation


# instance fields
.field public absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public diamondPrice:I

.field public dir:I

.field public dirIndex:I

.field public dx:I

.field public dy:I

.field public length:I

.field public maxLevel:I

.field public minLevel:I

.field public modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public price:J

.field public relativeLevels:Lio/blueflower/stapel2d/util/IntList;

.field public sx:I

.field public sy:I

.field public tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public tx:I

.field public ty:I

.field public valid:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->minLevel:I

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    .line 32
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 33
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 39
    iget-object v0, p1, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 40
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method

.method public static synthetic access$072(Linfo/flowersoft/theotown/city/modifier/LineBuilder;I)Z
    .registers 3

    .line 15
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    and-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    return p1
.end method

.method public static synthetic access$114(Linfo/flowersoft/theotown/city/modifier/LineBuilder;J)J
    .registers 5

    .line 15
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    return-wide v0
.end method

.method public static synthetic access$214(Linfo/flowersoft/theotown/city/modifier/LineBuilder;J)I
    .registers 5

    .line 15
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->diamondPrice:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->diamondPrice:I

    return p1
.end method


# virtual methods
.method public final adjustLevels()V
    .registers 10

    .line 227
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V

    .line 240
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    .line 241
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    const/4 v0, 0x1

    .line 243
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move v3, v2

    .line 246
    :goto_12
    aget-boolean v4, v1, v2

    if-eqz v4, :cond_12e

    iget-boolean v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    if-eqz v4, :cond_12e

    .line 247
    aput-boolean v2, v1, v2

    add-int/2addr v3, v0

    move v4, v2

    .line 250
    :goto_1e
    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v4, v5, :cond_32

    .line 251
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    if-le v5, v6, :cond_2f

    .line 252
    iput-boolean v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    goto :goto_32

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_32
    :goto_32
    const/4 v4, 0x3

    .line 257
    :goto_33
    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v4, v5, :cond_91

    .line 258
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v4, -0x3

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_8e

    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 259
    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    if-gt v5, v6, :cond_67

    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v8, v4, -0x2

    invoke-virtual {v6, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    if-le v5, v6, :cond_8e

    :cond_67
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 260
    invoke-virtual {v5, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    if-ltz v5, :cond_8e

    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    if-ltz v5, :cond_8e

    .line 261
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevelRaw(II)V

    .line 262
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p0, v4, v7}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevelRaw(II)V

    .line 263
    aput-boolean v0, v1, v2

    goto :goto_91

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_91
    :goto_91
    const/4 v4, 0x2

    .line 268
    :goto_92
    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v4, v5, :cond_c5

    .line 269
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_c2

    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    if-le v5, v6, :cond_c2

    .line 270
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p0, v4, v7}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevelRaw(II)V

    .line 271
    aput-boolean v0, v1, v2

    goto :goto_c5

    :cond_c2
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    :cond_c5
    :goto_c5
    move v4, v2

    .line 276
    :goto_c6
    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v5, v0

    if-ge v4, v5, :cond_f2

    .line 277
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result v5

    if-ne v5, v0, :cond_ef

    .line 278
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    add-int/2addr v7, v0

    if-eq v5, v7, :cond_ef

    .line 279
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4, v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevelRaw(II)V

    .line 280
    aput-boolean v0, v1, v2

    goto :goto_f2

    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    :cond_f2
    :goto_f2
    move v4, v0

    .line 284
    :goto_f3
    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v4, v5, :cond_11f

    .line 285
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11c

    .line 286
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    add-int/2addr v7, v0

    if-eq v5, v7, :cond_11c

    .line 287
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevelRaw(II)V

    .line 288
    aput-boolean v0, v1, v2

    goto :goto_11f

    :cond_11c
    add-int/lit8 v4, v4, 0x1

    goto :goto_f3

    :cond_11f
    :goto_11f
    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_124

    goto :goto_12e

    .line 295
    :cond_124
    new-instance v4, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;

    invoke-direct {v4, p0, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;[Z)V

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    goto/16 :goto_12

    .line 316
    :cond_12e
    :goto_12e
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    return-void
.end method

.method public abstract afterPriceCalculation()J
.end method

.method public abstract beforePriceCalculation()V
.end method

.method public abstract beginBuild()V
.end method

.method public abstract beginDestroy()V
.end method

.method public build()V
    .registers 1

    .line 173
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->checkSetup()V

    .line 175
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->beginBuild()V

    .line 177
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->adjustLevels()V

    .line 178
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->calculatePrice()V

    .line 180
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->finallyBuild()V

    .line 182
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->endBuild()V

    return-void
.end method

.method public abstract buildOnTile(IIIII)V
.end method

.method public final calculatePrice()V
    .registers 5

    .line 330
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->beforePriceCalculation()V

    const-wide/16 v0, 0x0

    .line 331
    iput-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->diamondPrice:I

    .line 333
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$4;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    .line 340
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->afterPriceCalculation()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    return-void
.end method

.method public abstract canBuildOnTile(IIIII)Z
.end method

.method public final checkSetup()V
    .registers 3

    .line 223
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Road builder is not properly set up"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final destroySingleTile(III)V
    .registers 13

    .line 194
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 195
    new-instance v1, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;

    invoke-direct {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 197
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_67

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;

    .line 199
    iget v2, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;->x:I

    .line 200
    iget v3, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;->y:I

    .line 201
    iget v4, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;->level:I

    .line 203
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 204
    invoke-virtual {p0, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->destroyTile(III)V

    const/4 p2, 0x1

    :goto_2d
    const/16 p3, 0x8

    if-gt p2, p3, :cond_d

    .line 207
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p3

    add-int v5, v2, p3

    .line 208
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p3

    add-int v6, v3, p3

    .line 210
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, v5, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_64

    .line 211
    iget p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->minLevel:I

    move v7, p3

    :goto_48
    iget p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    if-gt v7, p3, :cond_64

    .line 212
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result p3

    add-int v8, p3, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->processNeighborOfDestroyedTile(IIIIIII)Z

    move-result p3

    if-nez p3, :cond_61

    .line 214
    new-instance p3, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;

    invoke-direct {p3, v5, v6, v7}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;-><init>(III)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_64
    mul-int/lit8 p2, p2, 0x2

    goto :goto_2d

    :cond_67
    return-void
.end method

.method public abstract destroyTile(III)V
.end method

.method public abstract endBuild()V
.end method

.method public abstract endDestroy()V
.end method

.method public final finallyBuild()V
    .registers 2

    .line 344
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$5;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$5;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    .line 351
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$6;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$6;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V

    .line 358
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$7;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$7;-><init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->iterateOverNeighbors(Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;)V

    return-void
.end method

.method public getAbsoluteLevel(I)I
    .registers 3

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getDLevel(I)I
    .registers 8

    .line 397
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ge v0, v3, :cond_19

    move v0, v1

    goto :goto_2e

    :cond_19
    if-lez p1, :cond_2d

    .line 399
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ge v0, v3, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-nez v0, :cond_7f

    .line 402
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-nez v3, :cond_7f

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_47

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, p1, 0x1

    .line 403
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ltz v3, :cond_7f

    :cond_47
    if-lez p1, :cond_53

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, p1, -0x1

    .line 404
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ltz v3, :cond_7f

    .line 405
    :cond_53
    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v4, p1

    add-int/2addr v3, v4

    .line 406
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr p1, v5

    add-int/2addr v4, p1

    .line 407
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getPotentialUpDirs(II)I

    move-result p1

    .line 408
    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v3, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-eqz v3, :cond_72

    return v1

    .line 410
    :cond_72
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v1

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-eqz p1, :cond_7f

    return v2

    :cond_7f
    return v0
.end method

.method public getDiamondPrice()I
    .registers 2

    .line 169
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->diamondPrice:I

    return v0
.end method

.method public abstract getDiamondPriceForTile(IIIII)J
.end method

.method public getDir()I
    .registers 2

    .line 154
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .line 150
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 165
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    return-wide v0
.end method

.method public abstract getPriceForTile(IIIII)J
.end method

.method public getRelativeLevel(I)I
    .registers 3

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public isBuildable()Z
    .registers 2

    .line 158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->adjustLevels()V

    .line 159
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->calculatePrice()V

    .line 161
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    return v0
.end method

.method public final iterateOverLine(Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;)V
    .registers 9

    const/4 v0, 0x0

    move v2, v0

    .line 418
    :goto_2
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v2, v0, :cond_29

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    if-eqz v0, :cond_29

    .line 419
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v1, v2

    add-int v3, v0, v1

    .line 420
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v1, v2

    add-int v4, v0, v1

    .line 421
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result v6

    .line 422
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;->process(IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_29
    return-void
.end method

.method public final iterateOverNeighbors(Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;)V
    .registers 12

    const/4 v0, 0x0

    move v2, v0

    .line 427
    :goto_2
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v2, v0, :cond_9c

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    if-eqz v0, :cond_9c

    .line 428
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v1, v2

    add-int v3, v0, v1

    .line 429
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v1, v2

    add-int v4, v0, v1

    .line 430
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result v6

    const/4 v0, -0x1

    :goto_1d
    const/4 v1, 0x2

    if-ge v0, v1, :cond_48

    .line 432
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v1, v0

    add-int v7, v3, v1

    .line 433
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v1, v0

    sub-int v8, v4, v1

    .line 434
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 435
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 436
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    move-object v1, p1

    .line 435
    invoke-interface/range {v1 .. v9}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;->process(IIIIIIII)V

    goto :goto_44

    :cond_43
    move-object v1, p1

    :goto_44
    add-int/lit8 v0, v0, 0x2

    move-object p1, v1

    goto :goto_1d

    :cond_48
    move-object v1, p1

    if-nez v2, :cond_6e

    .line 441
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    sub-int v7, p1, v0

    .line 442
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    sub-int v8, p1, v0

    .line 443
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 444
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 445
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 446
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 444
    invoke-interface/range {v1 .. v9}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;->process(IIIIIIII)V

    .line 450
    :cond_6e
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_97

    .line 451
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tx:I

    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    add-int v7, p1, v0

    .line 452
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->ty:I

    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    add-int v8, p1, v0

    .line 453
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 454
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 455
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 456
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 454
    invoke-interface/range {v1 .. v9}, Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;->process(IIIIIIII)V

    :cond_97
    add-int/lit8 v2, v2, 0x1

    move-object p1, v1

    goto/16 :goto_2

    :cond_9c
    return-void
.end method

.method public abstract processBuiltTile(IIIII)V
.end method

.method public abstract processNeighborOfBuiltTile(IIIIIIII)V
.end method

.method public abstract processNeighborOfDestroyedTile(IIIIIII)Z
.end method

.method public remove(III)V
    .registers 4

    .line 186
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->beginDestroy()V

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->destroySingleTile(III)V

    .line 190
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->endDestroy()V

    return-void
.end method

.method public setAbsoluteLevel(II)V
    .registers 7

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    return-void
.end method

.method public setAbsoluteLevelRaw(II)V
    .registers 7

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevelRaw(II)V

    return-void
.end method

.method public setAbsoluteLevels(I)V
    .registers 4

    const/4 v0, 0x0

    .line 92
    :goto_1
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v0, v1, :cond_b

    .line 93
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevel(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public setInnerLevels(II)V
    .registers 5

    move v0, p2

    .line 98
    :goto_1
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_c

    .line 99
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public setLevels(I)V
    .registers 4

    const/4 v0, 0x0

    .line 86
    :goto_1
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge v0, v1, :cond_b

    .line 87
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public setLine(IIII)V
    .registers 9

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    if-eq p1, p3, :cond_7

    if-ne p2, p4, :cond_a0

    .line 51
    :cond_7
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p3, p4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_a0

    .line 56
    :cond_19
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    .line 57
    iput p2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    .line 58
    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tx:I

    .line 59
    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->ty:I

    sub-int/2addr p3, p1

    .line 60
    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    sub-int/2addr p4, p2

    .line 61
    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    .line 62
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    .line 63
    iget p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    invoke-static {p3, v1}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    .line 64
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dirIndex:I

    .line 65
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    .line 66
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    .line 67
    iget p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    .line 68
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 69
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    move p3, v0

    .line 70
    :goto_68
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-ge p3, v1, :cond_79

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 72
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_68

    :cond_79
    const-wide/16 v2, 0x0

    .line 74
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->price:J

    .line 75
    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->diamondPrice:I

    if-ne v1, p4, :cond_9d

    .line 77
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_9d

    .line 78
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getUpDirs(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    .line 79
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result p1

    if-eq p1, p4, :cond_9d

    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    .line 82
    :cond_9d
    iput-boolean p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    return-void

    .line 52
    :cond_a0
    :goto_a0
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->valid:Z

    return-void
.end method

.method public setMaxLevel(I)V
    .registers 2

    .line 108
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    return-void
.end method

.method public setMinLevel(I)V
    .registers 2

    .line 104
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->minLevel:I

    return-void
.end method

.method public setRelativeLevel(II)V
    .registers 8

    .line 123
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->minLevel:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p2, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v4, p2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, p2, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method public setRelativeLevelRaw(II)V
    .registers 8

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p2, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sx:I

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dx:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->sy:I

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dy:I

    mul-int/2addr v4, p2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, p2, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method public setRelativeLevelStartTarget(IIZ)V
    .registers 10

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, p2, :cond_8

    move p2, v2

    goto :goto_9

    :cond_8
    move p2, v1

    :goto_9
    move v3, v1

    .line 114
    :goto_a
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    sub-int v4, v3, p2

    .line 115
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 116
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int v5, v0, v5

    mul-int/2addr v4, v5

    add-int/2addr v4, p1

    if-eqz p3, :cond_37

    .line 117
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    goto :goto_38

    :cond_37
    move v5, v3

    .line 118
    :goto_38
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3e
    return-void
.end method

.method public setTile(II)V
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2, p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass1 (info.flowersoft.theotown.city.modifier.LineBuilder$1)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->adjustLevels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIII)V
    .registers 13

    .line 230
    iget-object p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p4, p4, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p4

    .line 231
    iget-object p5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object v0, p5, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    iget-object p5, p5, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p5, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p5

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v1

    add-int/2addr p5, v1

    invoke-virtual {v0, p1, p5}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 232
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p5, v1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p5, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p5

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    sub-int v5, p5, v0

    iget-object p5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->canBuildOnTile(IIIII)Z

    move-result p1

    move v1, v2

    move v2, v3

    move v3, v4

    if-nez p1, :cond_80

    .line 233
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget p3, p3, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 234
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p2, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, v1, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->canBuildOnTile(IIIII)Z

    move-result p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->access$072(Linfo/flowersoft/theotown/city/modifier/LineBuilder;I)Z

    .line 236
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$1;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p2, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p2, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->access$072(Linfo/flowersoft/theotown/city/modifier/LineBuilder;I)Z

    :cond_80
    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass2 (info.flowersoft.theotown.city.modifier.LineBuilder$2)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->adjustLevels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

.field public final synthetic val$changedFlag:[Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;[Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->val$changedFlag:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIII)V
    .registers 14

    .line 298
    iget-object p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-virtual {p4, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result p4

    .line 299
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget p5, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    const/4 v6, 0x1

    sub-int/2addr p5, v6

    const/4 v7, 0x0

    if-ge p1, p5, :cond_3e

    if-lez p4, :cond_3e

    .line 300
    iget-object p5, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p5, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->canBuildOnTile(IIIII)Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget p3, p2, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    if-ge p1, p3, :cond_41

    .line 301
    iget-object p1, p2, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {p2, p1, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    .line 302
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->val$changedFlag:[Z

    aput-boolean v6, p1, v7

    return-void

    :cond_3e
    move v1, p1

    move v2, p2

    move v3, p3

    :cond_41
    if-lez v1, :cond_70

    if-gez p4, :cond_70

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->canBuildOnTile(IIIII)Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget p3, p2, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->maxLevel:I

    if-ge p1, p3, :cond_70

    .line 308
    iget-object p1, p2, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {p2, p1, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    .line 309
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$2;->val$changedFlag:[Z

    aput-boolean v6, p1, v7

    :cond_70
    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass3 (info.flowersoft.theotown.city.modifier.LineBuilder$3)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->adjustLevels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 316
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIII)V
    .registers 13

    .line 319
    iget-object p4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget p5, p4, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    add-int/lit8 p5, p5, -0x1

    if-ge p1, p5, :cond_2e

    iget-object p4, p4, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p4

    iget-object p5, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p5, p5, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p5, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p5

    if-ge p4, p5, :cond_2e

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->canBuildOnTile(IIIII)Z

    move-result p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->access$072(Linfo/flowersoft/theotown/city/modifier/LineBuilder;I)Z

    goto :goto_31

    :cond_2e
    move v1, p1

    move v2, p2

    move v3, p3

    :goto_31
    if-lez v1, :cond_5a

    .line 322
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->absoluteLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 p3, v1, -0x1

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    if-ge p1, p2, :cond_5a

    move v4, v3

    move v3, v2

    move v2, v1

    .line 323
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$3;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    iget-object p1, v1, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->canBuildOnTile(IIIII)Z

    move-result p1

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->access$072(Linfo/flowersoft/theotown/city/modifier/LineBuilder;I)Z

    :cond_5a
    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass4 (info.flowersoft.theotown.city.modifier.LineBuilder$4)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$4;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->calculatePrice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 333
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$4;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIII)V
    .registers 13

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$4;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPriceForTile(IIIII)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->access$114(Linfo/flowersoft/theotown/city/modifier/LineBuilder;J)J

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    .line 337
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$4;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDiamondPriceForTile(IIIII)J

    move-result-wide p1

    invoke-static {v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->access$214(Linfo/flowersoft/theotown/city/modifier/LineBuilder;J)I

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass5 (info.flowersoft.theotown.city.modifier.LineBuilder$5)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$5;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->finallyBuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 344
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$5;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIII)V
    .registers 12

    .line 347
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$5;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->buildOnTile(IIIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass6 (info.flowersoft.theotown.city.modifier.LineBuilder$6)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$6;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->finallyBuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$6;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIII)V
    .registers 12

    .line 354
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$6;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->processBuiltTile(IIIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.AnonymousClass7 (info.flowersoft.theotown.city.modifier.LineBuilder$7)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$7;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;->finallyBuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/LineBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 358
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$7;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(IIIIIIII)V
    .registers 18

    .line 361
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$7;->this$0:Linfo/flowersoft/theotown/city/modifier/LineBuilder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->processNeighborOfBuiltTile(IIIIIIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.Location (info.flowersoft.theotown.city.modifier.LineBuilder$Location)
.class Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;
.super Ljava/lang/Object;
.source "LineBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public level:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;->x:I

    .line 478
    iput p2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;->y:I

    .line 479
    iput p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder$Location;->level:I

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.NeighborHandler (info.flowersoft.theotown.city.modifier.LineBuilder$NeighborHandler)
.class interface abstract Linfo/flowersoft/theotown/city/modifier/LineBuilder$NeighborHandler;
.super Ljava/lang/Object;
.source "LineBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NeighborHandler"
.end annotation


# virtual methods
.method public abstract process(IIIIIIII)V
.end method

###### Class info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler (info.flowersoft.theotown.city.modifier.LineBuilder$TileHandler)
.class interface abstract Linfo/flowersoft/theotown/city/modifier/LineBuilder$TileHandler;
.super Ljava/lang/Object;
.source "LineBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/LineBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileHandler"
.end annotation


# virtual methods
.method public abstract process(IIIII)V
.end method
