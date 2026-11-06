###### Class info.flowersoft.theotown.city.modifier.CityModifier (info.flowersoft.theotown.city.modifier.CityModifier)
.class public Linfo/flowersoft/theotown/city/modifier/CityModifier;
.super Ljava/lang/Object;
.source "CityModifier.java"


# instance fields
.field public final WASTE_ON_ROAD:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final events:Z

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public final roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

.field public final terrainBuilder:Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Z)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "$animationwaste00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->WASTE_ON_ROAD:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 80
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    .line 81
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 82
    new-instance p1, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;-><init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;Z)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    .line 83
    new-instance p1, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;-><init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->terrainBuilder:Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    .line 85
    iput-boolean p2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->events:Z

    return-void
.end method


# virtual methods
.method public addTileInfluence(II)V
    .registers 9

    .line 1786
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->ensureInfluence()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1787
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getModifyCounter(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 1789
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addBaseInfluenceFromTile(II)V

    goto :goto_39

    .line 1791
    :cond_1d
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong modify counter on adding! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CityModifier"

    invoke-interface {v2, v5, v3}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v2, :cond_40

    .line 1794
    :goto_39
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    sub-int/2addr v0, v1

    invoke-virtual {v2, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->setModifyCounter(III)V

    return-void

    .line 1792
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    return-void
.end method

.method public addTileInfluence(IIII)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_14

    move v2, v0

    :goto_5
    if-ge v2, p4, :cond_11

    add-int v3, p1, v1

    add-int v4, p2, v2

    .line 1780
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method public adjustGroundWaterBorder(II)V
    .registers 5

    .line 1701
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1702
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 1703
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isNearWater(II)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1704
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getWaterMask(II)I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->setBorder(I)V

    return-void

    :cond_20
    const/4 p1, -0x1

    .line 1706
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->setBorder(I)V

    :cond_24
    return-void
.end method

.method public adjustGroundWaterBorder(IIII)V
    .registers 8

    move v0, p2

    :goto_1
    add-int v1, p2, p4

    if-ge v0, v1, :cond_13

    move v1, p1

    :goto_6
    add-int v2, p1, p3

    if-ge v1, v2, :cond_10

    .line 1695
    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->adjustGroundWaterBorder(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public final alignPipes(II)V
    .registers 3

    .line 791
    invoke-virtual {p0, p1, p2, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->alignPipes(IIII)V

    return-void
.end method

.method public final alignPipes(IIII)V
    .registers 8

    add-int/lit8 p1, p1, -0x1

    :goto_2
    add-int/lit8 v0, p3, 0x1

    if-gt p1, v0, :cond_2d

    add-int/lit8 v0, p2, -0x1

    :goto_8
    add-int/lit8 v1, p4, 0x1

    if-gt v0, v1, :cond_2a

    .line 797
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 798
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 800
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPipeMask(Linfo/flowersoft/theotown/draft/PipeDraft;II)I

    move-result v2

    .line 801
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Pipe;->setFrame(I)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2d
    return-void
.end method

.method public final alignWires(IIIII)V
    .registers 15

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v1, p1

    :goto_3
    add-int/lit8 v2, p3, 0x1

    const/4 v3, 0x2

    if-gt v1, v2, :cond_42

    add-int/lit8 v2, p2, -0x1

    :goto_a
    add-int/lit8 v4, p4, 0x1

    if-gt v2, v4, :cond_3f

    .line 876
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 877
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v1, v2, p5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 879
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getWireMask(Linfo/flowersoft/theotown/draft/WireDraft;II)I

    move-result v5

    .line 880
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v6

    if-gt v6, v3, :cond_32

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->isCorner(I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 881
    :cond_32
    invoke-virtual {p0, v1, v2, p5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWirePileBuildable(III)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_3c

    .line 883
    :cond_39
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/objects/Wire;->setFrame(I)V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_42
    :goto_42
    if-gt p1, v2, :cond_ae

    add-int/lit8 p3, p2, -0x1

    :goto_46
    add-int/lit8 v1, p4, 0x1

    if-gt p3, v1, :cond_ab

    .line 891
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 892
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p3, p5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 894
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result v4

    move v5, v0

    :goto_5f
    const/16 v6, 0x8

    if-gt v5, v6, :cond_96

    .line 896
    invoke-static {v5, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 897
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    add-int/2addr v6, p1

    .line 898
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v7

    add-int/2addr v7, p3

    .line 899
    iget-object v8, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 900
    iget-object v8, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v6, v7, p5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v6

    if-eqz v6, :cond_91

    .line 902
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v7

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result v6

    invoke-static {v7, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_93

    :cond_91
    not-int v6, v5

    and-int/2addr v4, v6

    :cond_93
    mul-int/lit8 v5, v5, 0x2

    goto :goto_5f

    .line 908
    :cond_96
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v5

    if-gt v5, v3, :cond_a2

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->isCorner(I)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 909
    :cond_a2
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    .line 911
    :cond_a5
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/city/objects/Wire;->setFrame(I)V

    :cond_a8
    add-int/lit8 p3, p3, 0x1

    goto :goto_46

    :cond_ab
    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_ae
    return-void
.end method

.method public build(Linfo/flowersoft/theotown/draft/BusStopDraft;II)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 8

    .line 1105
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 1106
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gez v0, :cond_e

    goto :goto_2b

    :cond_e
    :goto_e
    if-ltz v0, :cond_20

    .line 1112
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    .line 1113
    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_20
    move-object v2, v1

    :goto_21
    if-nez v2, :cond_24

    return-object v1

    .line 1123
    :cond_24
    iget v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    return-object p1

    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public build(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 7

    .line 1127
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 1129
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p4

    if-eqz p4, :cond_31

    .line 1132
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    if-nez v0, :cond_31

    iget v0, p4, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_31

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_31

    .line 1133
    new-instance v0, Linfo/flowersoft/theotown/city/objects/BusStop;

    iget v1, p4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-direct {v0, p1, p2, p3, v1}, Linfo/flowersoft/theotown/city/objects/BusStop;-><init>(Linfo/flowersoft/theotown/draft/BusStopDraft;III)V

    .line 1134
    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 1135
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object p1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BusStopList;->add(Linfo/flowersoft/theotown/city/objects/BusStop;)Z

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 1138
    :goto_32
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    return-object v0
.end method

.method public build(Linfo/flowersoft/theotown/draft/TreeDraft;II)Linfo/flowersoft/theotown/city/objects/Tree;
    .registers 12

    .line 742
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 744
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v2, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 745
    new-instance v1, Linfo/flowersoft/theotown/city/objects/Tree;

    invoke-direct {v1, p1, v0, p2, p3}, Linfo/flowersoft/theotown/city/objects/Tree;-><init>(Linfo/flowersoft/theotown/draft/TreeDraft;III)V

    .line 746
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 748
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    .line 750
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p1

    if-nez p1, :cond_31

    .line 751
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const-string v3, "!_treeplantcounter"

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->add(Ljava/lang/String;JJ)J

    :cond_31
    return-object v1
.end method

.method public build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "III",
            "Lvm2/LuaValue;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p1

    move/from16 v7, p4

    .line 919
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v3

    .line 920
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v4

    .line 922
    iget-object v0, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    const/4 v8, 0x0

    if-nez v0, :cond_10f

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p5

    .line 923
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IIIILvm2/LuaValue;)V

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    .line 925
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v1, :cond_2c

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v9

    iget-object v9, v9, Linfo/flowersoft/theotown/city/Zones;->OTHER:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v1, v9, :cond_40

    :cond_2c
    move v1, v3

    :goto_2d
    add-int v9, v3, v5

    if-ge v1, v9, :cond_40

    move v9, v2

    :goto_32
    add-int v10, v2, v4

    if-ge v9, v10, :cond_3d

    const/4 v10, 0x0

    .line 928
    invoke-virtual {v0, v10, v9, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 933
    :cond_40
    invoke-virtual {v0, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    .line 935
    invoke-virtual {v0, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFenceWithin(IIII)V

    .line 936
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFence:[Ljava/lang/String;

    if-eqz v1, :cond_63

    array-length v9, v1

    if-lez v9, :cond_63

    .line 937
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget-object v1, v1, v9

    const-class v9, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-static {v1, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eqz v1, :cond_63

    .line 939
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFenceAround(Linfo/flowersoft/theotown/draft/FenceDraft;IIII)V

    :cond_63
    move-object v9, v0

    move v10, v4

    move v11, v5

    .line 943
    iget-boolean v0, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomFrame:Z

    if-eqz v0, :cond_77

    if-gez v7, :cond_77

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_75
    move v4, v0

    goto :goto_7c

    :cond_77
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_75

    .line 944
    :goto_7c
    iget-object v0, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->decoFrames:[I

    if-eqz v0, :cond_89

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_87
    move v5, v0

    goto :goto_8b

    :cond_89
    const/4 v0, -0x1

    goto :goto_87

    .line 945
    :goto_8b
    new-instance v0, Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v1, v9, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    const/4 v8, 0x0

    move-wide/from16 v20, v1

    move-object v1, v6

    move-wide/from16 v6, v20

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/city/objects/Building;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;IIIIJZ)V

    move-object v7, v0

    .line 948
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    invoke-virtual {v9, v0, v1, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMinTerrainLevel(IIII)I

    move-result v0

    .line 949
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v5

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v6

    invoke-virtual {v9, v1, v4, v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMaxTerrainLevel(IIII)I

    move-result v1

    .line 947
    invoke-virtual {v7, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setTerrainLevels(II)V

    move v0, v3

    :goto_d4
    add-int v1, v3, v11

    if-ge v0, v1, :cond_e8

    move v1, v2

    :goto_d9
    add-int v4, v2, v10

    if-ge v1, v4, :cond_e5

    .line 953
    iget-object v4, v9, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v1, v0, v7}, Linfo/flowersoft/theotown/city/Tiles;->setBuilding(IILinfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d9

    :cond_e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 957
    :cond_e8
    iget-object v0, v9, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {v9, v2, v3, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->updateZoneSizeForInfluencedTiles(IIII)V

    .line 960
    invoke-virtual {v9, v2, v3, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    move-object v0, v9

    .line 962
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    move-object v5, v6

    move-object v6, v1

    .line 964
    iget v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    if-nez v1, :cond_10a

    .line 965
    invoke-virtual {v0, v7, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 968
    :cond_10a
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_10f
    move-object/from16 v0, p0

    move-object/from16 v5, p5

    if-gez v7, :cond_116

    move v7, v8

    .line 972
    :cond_116
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    rsub-int/lit8 v1, v7, 0x4

    .line 973
    rem-int/lit8 v12, v1, 0x4

    .line 974
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/draft/Composition;->listXY(I)[I

    move-result-object v1

    move v2, v8

    .line 975
    :goto_126
    array-length v3, v1

    if-ge v2, v3, :cond_1a8

    .line 976
    aget v10, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 977
    aget v11, v1, v3

    .line 978
    iget-object v3, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v3, v10, v11}, Linfo/flowersoft/theotown/draft/Composition;->getBuilding(II)Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    move-result-object v3

    if-eqz v3, :cond_188

    .line 981
    iget-object v4, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v4, v10, v11, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v4

    .line 982
    iget-object v13, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v13, v10, v11, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v19

    .line 983
    iget-object v13, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v14, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v14, :cond_14c

    .line 984
    iget v15, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    goto :goto_14d

    :cond_14c
    move v15, v8

    :goto_14d
    if-eqz v14, :cond_162

    .line 987
    rem-int/lit8 v14, v7, 0x4

    iget v8, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    add-int/2addr v14, v8

    rem-int/lit8 v14, v14, 0x4

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v14, v8

    iget-object v8, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    rem-int/2addr v14, v8

    :goto_15f
    move v8, v14

    move v14, v15

    goto :goto_165

    .line 988
    :cond_162
    iget v14, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    goto :goto_15f

    .line 990
    :goto_165
    iget v15, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->x:I

    iget v0, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v0

    invoke-static/range {v10 .. v18}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 991
    iget-object v0, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-eqz v0, :cond_18b

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_186

    goto :goto_18b

    :cond_186
    move-object/from16 v0, p0

    :cond_188
    move-object v8, v1

    move v10, v2

    goto :goto_1a2

    .line 993
    :cond_18b
    :goto_18b
    iget-object v0, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    add-int v3, p2, v4

    add-int v4, p3, v19

    move v10, v2

    move v2, v3

    move v3, v4

    move v4, v8

    move-object v8, v1

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a2

    .line 995
    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a2
    :goto_1a2
    add-int/lit8 v2, v10, 0x2

    move-object v1, v8

    const/4 v8, 0x0

    goto/16 :goto_126

    :cond_1a8
    const/4 v1, 0x0

    .line 1002
    :goto_1a9
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_230

    .line 1003
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 1004
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 1005
    iget-object v3, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    invoke-virtual {v3, v4, v7, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v3

    add-int v3, v3, p2

    .line 1006
    iget-object v4, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v8, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v4

    add-int v4, v4, p3

    .line 1007
    iget-object v7, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v8, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    iget v10, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-virtual {v7, v8, v10, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v7

    add-int v7, v7, p2

    .line 1008
    iget-object v8, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v10, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    iget v11, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-virtual {v8, v10, v11, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v8

    add-int v8, v8, p3

    .line 1009
    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v10, v3, v4, v7, v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1011
    :goto_1fb
    iget v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->length:I

    if-ge v3, v7, :cond_20f

    .line 1012
    iget-object v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    aget v7, v7, v3

    .line 1013
    iget-object v8, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v8, v7, v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    .line 1014
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1fb

    :cond_20f
    if-gez v4, :cond_217

    .line 1016
    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 1017
    :cond_217
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    .line 1018
    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->join:Z

    sput-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    .line 1019
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_22a

    .line 1020
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    .line 1022
    :cond_22a
    sput-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    :cond_22c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1a9

    :cond_230
    const/4 v7, 0x0

    .line 1026
    :goto_231
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_27d

    .line 1027
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    .line 1028
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v3, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->x:I

    iget v4, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->y:I

    invoke-virtual {v2, v3, v4, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v2

    add-int v2, v2, p2

    .line 1029
    iget-object v3, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->x:I

    iget v8, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->y:I

    invoke-virtual {v3, v4, v8, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v3

    add-int v3, v3, p3

    .line 1030
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_278

    .line 1031
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v8, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->level:I

    invoke-virtual {v4, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_278

    .line 1034
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;ILvm2/LuaValue;Z)V

    :cond_278
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p5

    goto :goto_231

    :cond_27d
    const/4 v1, 0x0

    .line 1039
    :goto_27e
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c6

    .line 1040
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    .line 1041
    iget-object v3, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->x:I

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->y:I

    invoke-virtual {v3, v4, v5, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v3

    add-int v3, v3, p2

    .line 1042
    iget-object v4, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->x:I

    iget v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->y:I

    invoke-virtual {v4, v5, v7, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v4

    add-int v4, v4, p3

    .line 1043
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_2c3

    .line 1044
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->level:I

    invoke-virtual {v5, v3, v4, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    if-eqz v5, :cond_2c3

    .line 1046
    iget-object v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->level:I

    invoke-virtual {v0, v5, v3, v4, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Linfo/flowersoft/theotown/city/objects/BusStop;

    :cond_2c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_27e

    :cond_2c6
    const/4 v8, 0x0

    .line 1051
    :goto_2c7
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_309

    .line 1052
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    .line 1053
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v3, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->x:I

    iget v4, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->y:I

    invoke-virtual {v2, v3, v4, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v2

    add-int v2, v2, p2

    .line 1054
    iget-object v3, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->x:I

    iget v5, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->y:I

    invoke-virtual {v3, v4, v5, v12}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v3

    add-int v3, v3, p3

    .line 1055
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v4, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v4

    if-eqz v4, :cond_306

    .line 1056
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v4, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/TreeDraft;II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v2

    iget v1, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->frame:I

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/objects/Tree;->setFrame(I)V

    :cond_306
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c7

    :cond_309
    return-object v9
.end method

.method public build(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/PipeDraft;",
            "IIII)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Pipe;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 758
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sub-int v6, v3, v1

    int-to-float v7, v6

    .line 760
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    float-to-int v7, v7

    sub-int v8, v4, v2

    int-to-float v9, v8

    .line 761
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v9, v9

    .line 762
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x0

    move v10, v8

    :goto_2d
    if-gt v10, v6, :cond_67

    mul-int v11, v10, v7

    add-int/2addr v11, v1

    mul-int v12, v10, v9

    add-int/2addr v12, v2

    .line 767
    iget-object v13, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v13

    if-eqz v13, :cond_4b

    .line 771
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result v14

    .line 772
    iget-object v15, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v15

    invoke-virtual {v15, v13}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_4b
    move v14, v8

    .line 775
    :goto_4c
    new-instance v13, Linfo/flowersoft/theotown/city/objects/Pipe;

    move-object/from16 v15, p1

    invoke-direct {v13, v15, v11, v12, v8}, Linfo/flowersoft/theotown/city/objects/Pipe;-><init>(Linfo/flowersoft/theotown/draft/PipeDraft;III)V

    .line 776
    invoke-virtual {v13, v14}, Linfo/flowersoft/theotown/city/objects/Pipe;->setConnection(I)V

    .line 777
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v11, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->setPipe(IILinfo/flowersoft/theotown/city/objects/Pipe;)V

    .line 778
    iget-object v11, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v11

    invoke-virtual {v11, v13}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    .line 781
    :cond_67
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 782
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 783
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 784
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 785
    invoke-virtual {v0, v6, v7, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->alignPipes(IIII)V

    return-object v5
.end method

.method public build(Linfo/flowersoft/theotown/draft/RailDraft;IIIILvm2/LuaValue;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/RailDraft;",
            "IIII",
            "Lvm2/LuaValue;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Rail;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sub-int v3, p4, p2

    int-to-float v4, v3

    .line 429
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    sub-int v5, p5, p3

    int-to-float v6, v5

    .line 430
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-int v6, v6

    .line 431
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 432
    invoke-static {v4, v6}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v5

    const/4 v7, 0x0

    if-nez v3, :cond_2d

    move v5, v7

    :cond_2d
    move v8, v7

    move v9, v8

    :goto_2f
    const/4 v10, 0x0

    if-gt v8, v3, :cond_d8

    mul-int v11, v8, v4

    add-int v11, p2, v11

    mul-int v12, v8, v6

    add-int v12, p3, v12

    const/4 v13, 0x3

    :goto_3b
    const/16 v14, 0x10

    if-gt v13, v14, :cond_47

    .line 441
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v14, v11, v12, v13}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removePile(III)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3b

    .line 444
    :cond_47
    invoke-virtual {v0, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 446
    iget-object v13, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v11, v12, v10}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 448
    iget-object v13, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v13

    if-eqz v13, :cond_65

    .line 449
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v14

    sget-object v15, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v14, v15, :cond_65

    move-object/from16 v14, p6

    .line 450
    invoke-virtual {v0, v13, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_67

    :cond_65
    move-object/from16 v14, p6

    .line 453
    :goto_67
    invoke-virtual {v0, v10, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    if-nez v8, :cond_6e

    move v10, v5

    goto :goto_75

    .line 455
    :cond_6e
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v10

    if-ge v8, v3, :cond_75

    or-int/2addr v10, v5

    .line 457
    :cond_75
    :goto_75
    iget-object v13, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v13

    if-nez v13, :cond_97

    .line 460
    new-instance v13, Linfo/flowersoft/theotown/city/objects/Rail;

    invoke-direct {v13, v1, v11, v12}, Linfo/flowersoft/theotown/city/objects/Rail;-><init>(Linfo/flowersoft/theotown/draft/RailDraft;II)V

    .line 461
    invoke-virtual {v13, v7}, Linfo/flowersoft/theotown/city/objects/Rail;->setPile(Z)V

    .line 462
    iget-object v15, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v15, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v11, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V

    .line 464
    invoke-virtual {v13, v10}, Linfo/flowersoft/theotown/city/objects/Rail;->setFrame(I)V

    goto :goto_9f

    .line 466
    :cond_97
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Rail;->getFrame()I

    move-result v15

    or-int/2addr v10, v15

    invoke-virtual {v13, v10}, Linfo/flowersoft/theotown/city/objects/Rail;->setFrame(I)V

    :goto_9f
    const/4 v10, 0x1

    if-eqz v8, :cond_c3

    if-ne v8, v3, :cond_a5

    goto :goto_c3

    :cond_a5
    sub-int v15, v8, v9

    .line 472
    iget v7, v1, Linfo/flowersoft/theotown/draft/RailDraft;->pileDistance:I

    if-lt v15, v7, :cond_c6

    .line 473
    invoke-virtual {v0, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v7

    if-nez v7, :cond_c6

    invoke-virtual {v0, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v7

    if-nez v7, :cond_c6

    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 474
    invoke-virtual {v13, v10}, Linfo/flowersoft/theotown/city/objects/Rail;->setPile(Z)V

    goto :goto_c6

    .line 470
    :cond_c3
    :goto_c3
    invoke-virtual {v13, v10}, Linfo/flowersoft/theotown/city/objects/Rail;->setPile(Z)V

    .line 479
    :cond_c6
    :goto_c6
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Rail;->isPile()Z

    move-result v7

    if-eqz v7, :cond_cd

    move v9, v8

    .line 483
    :cond_cd
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v0, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2f

    :cond_d8
    return-object v10
.end method

.method public build(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/WireDraft;",
            "IIII)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Wire;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 809
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sub-int v7, v4, v2

    int-to-float v8, v7

    .line 811
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    float-to-int v8, v8

    sub-int v9, v5, v3

    int-to-float v10, v9

    .line 812
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v10, v10

    .line 813
    invoke-static {v8, v10}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v11

    .line 814
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 816
    iget v9, v1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    if-ltz v9, :cond_37

    const/4 v14, 0x1

    goto :goto_38

    :cond_37
    const/4 v14, 0x0

    :goto_38
    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_3a
    if-gt v15, v7, :cond_f3

    mul-int v16, v15, v8

    add-int v13, v2, v16

    mul-int v16, v15, v10

    move/from16 v17, v8

    add-int v8, v3, v16

    move/from16 v16, v10

    .line 822
    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v13, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v10

    if-eqz v14, :cond_62

    .line 824
    invoke-virtual {v0, v13, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTree(II)Z

    move-result v18

    if-eqz v18, :cond_62

    move-object/from16 v18, v10

    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v13, v8}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v10

    invoke-virtual {v0, v10, v13, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    goto :goto_64

    :cond_62
    move-object/from16 v18, v10

    :goto_64
    if-eqz v14, :cond_75

    .line 826
    invoke-virtual {v0, v13, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v10

    if-eqz v10, :cond_75

    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v13, v8}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v10

    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRailPile(Linfo/flowersoft/theotown/city/objects/Rail;)V

    .line 828
    :cond_75
    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v13, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v10

    if-nez v10, :cond_d9

    .line 830
    new-instance v10, Linfo/flowersoft/theotown/city/objects/Wire;

    move/from16 v19, v14

    const/4 v14, 0x0

    invoke-direct {v10, v1, v13, v8, v14}, Linfo/flowersoft/theotown/city/objects/Wire;-><init>(Linfo/flowersoft/theotown/draft/WireDraft;III)V

    .line 831
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v13, v8, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->setWire(IIILinfo/flowersoft/theotown/city/objects/Wire;)V

    .line 832
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v14

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    if-lez v7, :cond_ac

    if-nez v15, :cond_9b

    .line 836
    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/city/objects/Wire;->setFrame(I)V

    goto :goto_ac

    :cond_9b
    if-ne v15, v7, :cond_a5

    .line 838
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    invoke-virtual {v10, v14}, Linfo/flowersoft/theotown/city/objects/Wire;->setFrame(I)V

    goto :goto_ac

    .line 840
    :cond_a5
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v14

    invoke-virtual {v10, v14}, Linfo/flowersoft/theotown/city/objects/Wire;->setFrame(I)V

    :cond_ac
    :goto_ac
    if-eqz v19, :cond_d3

    .line 845
    iget v14, v1, Linfo/flowersoft/theotown/draft/WireDraft;->spacing:I

    if-ge v12, v14, :cond_c0

    if-eqz v15, :cond_c0

    if-eq v15, v7, :cond_c0

    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v14

    if-nez v14, :cond_bd

    goto :goto_c0

    :cond_bd
    const/4 v8, 0x1

    const/4 v14, 0x0

    goto :goto_cd

    :cond_c0
    :goto_c0
    invoke-virtual {v0, v13, v8, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWirePileBuildable(III)Z

    move-result v8

    if-eqz v8, :cond_bd

    const/4 v8, 0x1

    .line 846
    invoke-virtual {v10, v8}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    const/4 v12, 0x0

    :goto_cb
    const/4 v14, 0x0

    goto :goto_d5

    .line 849
    :goto_cd
    invoke-virtual {v10, v14}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d5

    :cond_d3
    const/4 v8, 0x1

    goto :goto_cb

    .line 854
    :goto_d5
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    :cond_d9
    move/from16 v19, v14

    const/4 v8, 0x1

    const/4 v14, 0x0

    if-eqz v19, :cond_e6

    .line 856
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result v13

    if-eqz v13, :cond_e6

    move v12, v14

    .line 859
    :cond_e6
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e9
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    move/from16 v8, v17

    move/from16 v14, v19

    goto/16 :goto_3a

    .line 864
    :cond_f3
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 865
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 866
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 867
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v2

    move v2, v7

    move v5, v9

    .line 868
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->alignWires(IIIII)V

    return-object v6
.end method

.method public buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V
    .registers 8

    .line 2091
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    .line 2092
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    .line 2093
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    .line 2094
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2095
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3, p4, p1}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    .line 2097
    :cond_19
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/2addr p2, v1

    add-int/2addr p3, v0

    invoke-virtual {v2, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2098
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 p4, p4, 0x2

    rem-int/lit8 p4, p4, 0x4

    invoke-virtual {v0, p2, p3, p4, p1}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    :cond_2c
    return-void
.end method

.method public buildFenceAround(Linfo/flowersoft/theotown/draft/FenceDraft;IIII)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-ge v1, p4, :cond_20

    add-int v3, p2, v1

    const/4 v4, 0x3

    .line 2081
    invoke-virtual {p0, p1, v3, p3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0, p1, v3, p3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    :cond_11
    add-int v4, p3, p5

    sub-int/2addr v4, v2

    .line 2082
    invoke-virtual {p0, p1, v3, v4, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0, p1, v3, v4, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    move v1, v0

    :goto_21
    if-ge v1, p5, :cond_3e

    add-int v3, p3, v1

    const/4 v4, 0x2

    .line 2085
    invoke-virtual {p0, p1, p2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {p0, p1, p2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    :cond_2f
    add-int v4, p2, p4

    sub-int/2addr v4, v2

    .line 2086
    invoke-virtual {p0, p1, v4, v3, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {p0, p1, v4, v3, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3e
    return-void
.end method

.method public buildRaw(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 8

    .line 1434
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    if-ltz v0, :cond_86

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    if-ltz v0, :cond_86

    .line 1435
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_86

    .line 1436
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_86

    .line 1438
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMinTerrainLevel(IIII)I

    move-result v0

    .line 1439
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMaxTerrainLevel(IIII)I

    move-result v1

    .line 1437
    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setTerrainLevels(II)V

    .line 1440
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 1442
    :goto_64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_86

    move v2, v0

    .line 1443
    :goto_6b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 1444
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, p1}, Linfo/flowersoft/theotown/city/Tiles;->setBuilding(IILinfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_86
    return-void
.end method

.method public buildRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;ILvm2/LuaValue;Z)V
    .registers 13

    if-eqz p5, :cond_8

    if-eqz p1, :cond_15

    .line 1964
    iget-boolean v1, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exclusive:Z

    if-eqz v1, :cond_15

    .line 1965
    :cond_8
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v2

    iget v3, p2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {p0, v1, v2, v3, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeAllRoadDecorations(IIILvm2/LuaValue;)V

    :cond_15
    if-eqz p1, :cond_90

    .line 1969
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_1e
    if-ltz v4, :cond_48

    .line 1970
    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 1971
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->occupationGroup:Ljava/lang/String;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->occupationGroup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exclusive:Z

    if-nez v2, :cond_36

    if-ne v1, p1, :cond_45

    .line 1972
    :cond_36
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v2

    iget v3, p2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoadDecoration(IIIILvm2/LuaValue;)V

    :cond_45
    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    :cond_48
    if-ltz p3, :cond_4e

    .line 1977
    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/city/objects/Road;->addDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;I)V

    goto :goto_51

    .line 1979
    :cond_4e
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Road;->addDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)I

    .line 1982
    :goto_51
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onBuiltTransitions:Ljava/util/List;

    if-eqz v0, :cond_7e

    .line 1983
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1984
    iget-object v1, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onBuiltTransitions:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 1985
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v5

    move-object v2, p2

    .line 1984
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 1986
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 1989
    :cond_7e
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v3

    iget v4, p2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p4

    move v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    :cond_90
    return-void
.end method

.method public buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;
    .registers 11

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_54

    .line 214
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    if-nez v2, :cond_54

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    const/4 v4, 0x3

    if-ge v3, v4, :cond_22

    .line 216
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p2, p3, v3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 218
    invoke-virtual {p0, v4, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removePunch(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 222
    :cond_22
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p2, p3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 223
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v3, p2, p3, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->remove(III)V

    .line 226
    :cond_2f
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 228
    invoke-virtual {p0, v2, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    .line 231
    :cond_3a
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 233
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    .line 234
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    if-nez v4, :cond_51

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-eqz v3, :cond_51

    .line 235
    invoke-virtual {p0, v2, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 238
    :cond_51
    invoke-virtual {p0, v1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    .line 241
    :cond_54
    sget-object p4, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    if-eqz p1, :cond_5b

    const-string v2, "$water00"

    goto :goto_5d

    :cond_5b
    const-string v2, "$ground00"

    :goto_5d
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 242
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v3, p4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 244
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWaterTiles()I

    move-result v4

    .line 245
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    .line 244
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/City;->setWaterTiles(I)V

    .line 248
    invoke-virtual {v0, p4}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 249
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setFrame(I)V

    .line 250
    iget-object p4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p4, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    const/4 p4, -0x1

    move v1, p4

    :goto_88
    const/4 v2, 0x1

    if-gt v1, v2, :cond_9b

    move v3, p4

    :goto_8c
    if-gt v3, v2, :cond_98

    add-int v4, p2, v3

    add-int v5, p3, v1

    .line 254
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->adjustGroundWaterBorder(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    :cond_9b
    if-eqz p1, :cond_d7

    .line 260
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result p1

    if-eqz p1, :cond_d7

    :goto_a5
    const/16 p1, 0x8

    if-gt v2, p1, :cond_d7

    .line 262
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p1

    add-int/2addr p1, p2

    .line 263
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p4

    add-int/2addr p4, p3

    .line 264
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v1

    .line 265
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v3

    if-eqz v3, :cond_d4

    .line 266
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, p1, p4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 268
    invoke-virtual {p0, p1, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 269
    invoke-virtual {p0, p2, p3, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    goto :goto_d4

    .line 272
    :cond_d1
    invoke-virtual {p0, p2, p3, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    :cond_d4
    :goto_d4
    mul-int/lit8 v2, v2, 0x2

    goto :goto_a5

    :cond_d7
    return-object v0
.end method

.method public calculateZoneSize(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1731
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    .line 1733
    :cond_f
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    .line 1737
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1738
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1740
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v9

    const/16 v10, 0x10

    if-eqz v9, :cond_102

    const/4 v12, 0x1

    move v13, v10

    move v5, v12

    const/4 v14, 0x0

    :goto_37
    if-gt v5, v10, :cond_ff

    move v7, v12

    const/4 v6, 0x0

    :goto_3b
    add-int/lit8 v8, v5, -0x1

    if-ge v6, v8, :cond_88

    if-eqz v7, :cond_88

    .line 1745
    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int v8, v1, v6

    add-int v15, v2, v5

    sub-int/2addr v15, v12

    invoke-virtual {v7, v8, v15}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1747
    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v8, v15}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    .line 1748
    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v8, v15}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    if-ne v8, v9, :cond_5e

    move v8, v12

    goto :goto_5f

    :cond_5e
    const/4 v8, 0x0

    .line 1750
    :goto_5f
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v10

    move/from16 v16, v12

    float-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1751
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v7, v8

    goto :goto_81

    :cond_7f
    move/from16 v16, v12

    :goto_81
    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v16

    const/16 v10, 0x10

    goto :goto_3b

    :cond_88
    move/from16 v16, v12

    move v6, v3

    move v10, v4

    const/4 v3, 0x0

    :goto_8d
    if-ge v3, v5, :cond_d3

    if-eqz v7, :cond_d3

    .line 1755
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int v7, v1, v5

    add-int/lit8 v7, v7, -0x1

    add-int v8, v2, v3

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1757
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 1758
    iget-object v11, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v11, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v7

    if-ne v7, v9, :cond_b0

    move/from16 v7, v16

    goto :goto_b1

    :cond_b0
    const/4 v7, 0x0

    .line 1760
    :goto_b1
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v8

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v8, v11

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1761
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v4

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v4, v11

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    goto :goto_d0

    :cond_cf
    move v7, v4

    :goto_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_d3
    if-nez v7, :cond_d6

    goto :goto_ff

    .line 1767
    :cond_d6
    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v3, :cond_ec

    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/ZoneDraft;->needsRoad:Z

    if-eqz v3, :cond_ec

    move v3, v5

    add-int/lit8 v5, v10, -0x1

    const-wide/32 v7, 0x1c000e4

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIIIJ)Z

    move-result v4

    if-eqz v4, :cond_f5

    goto :goto_ed

    :cond_ec
    move v3, v5

    .line 1768
    :goto_ed
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1769
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_f5
    add-int/lit8 v5, v3, 0x1

    move v3, v6

    move v4, v10

    move/from16 v12, v16

    const/16 v10, 0x10

    goto/16 :goto_37

    :cond_ff
    :goto_ff
    move v10, v13

    move v11, v14

    goto :goto_105

    :cond_102
    const/16 v10, 0x10

    const/4 v11, 0x0

    .line 1774
    :goto_105
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v1, v2, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->setMinMaxZoneSizes(IIII)Ljava/lang/Object;

    return-void
.end method

.method public calculateZoneSize(IIII)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_1c

    move v2, v0

    :goto_5
    if-ge v2, p4, :cond_19

    .line 1723
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int v4, p1, v1

    add-int v5, p2, v2

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1724
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->calculateZoneSize(II)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method public callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V
    .registers 9

    .line 1065
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->events:Z

    if-eqz v0, :cond_13

    .line 1066
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1068
    invoke-virtual/range {p1 .. p6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIIILvm2/LuaValue;)Z

    :cond_13
    return-void
.end method

.method public canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z
    .registers 11

    .line 2123
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p1

    .line 2124
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p4

    .line 2125
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    .line 2126
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7c

    .line 2127
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 2128
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    .line 2130
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, p2, p3, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 2131
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v5

    invoke-static {p1, v5}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v5

    if-eqz v5, :cond_35

    return v3

    .line 2135
    :cond_35
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/2addr p2, p4

    add-int/2addr p3, v0

    invoke-virtual {v5, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p4

    if-eqz p4, :cond_74

    .line 2136
    iget-object p4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p4

    .line 2137
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 2138
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, p2, p3, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p2

    if-eqz p2, :cond_62

    .line 2140
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-eqz p1, :cond_62

    return v3

    :cond_62
    if-eqz v4, :cond_67

    if-ne v0, v4, :cond_67

    return v3

    .line 2143
    :cond_67
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_7b

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_7b

    return v3

    .line 2145
    :cond_74
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_7b

    return v3

    :cond_7b
    return v2

    .line 2149
    :cond_7c
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/2addr p2, p4

    add-int/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 2150
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 2152
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_93

    return v3

    :cond_93
    return v2

    :cond_94
    return v3
.end method

.method public containsFenceWithin(IIII)Z
    .registers 10

    move v0, p2

    :goto_1
    add-int v1, p2, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_24

    move v1, p1

    :goto_8
    add-int v4, p1, p3

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_21

    .line 2023
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2024
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v1, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v4

    if-eqz v4, :cond_1e

    return v3

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    :goto_24
    add-int/lit8 p4, v1, -0x1

    if-ge p2, p4, :cond_44

    move p4, p1

    :goto_29
    add-int v0, p1, p3

    if-ge p4, v0, :cond_41

    .line 2031
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p4, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2032
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p4, p2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v0

    if-eqz v0, :cond_3e

    return v3

    :cond_3e
    add-int/lit8 p4, p4, 0x1

    goto :goto_29

    :cond_41
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_44
    return v2
.end method

.method public destroy(IIZLvm2/LuaValue;)V
    .registers 16

    .line 1144
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1145
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1147
    invoke-virtual {p0, v3, p3, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroyBuilding(Linfo/flowersoft/theotown/city/objects/Building;ZLvm2/LuaValue;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_86

    :cond_18
    const/4 v3, 0x0

    const/16 v5, 0x10

    move v6, v3

    :goto_1c
    if-ltz v5, :cond_4b

    .line 1153
    iget-object v8, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, p1, p2, v5}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v8

    if-eqz v8, :cond_40

    if-nez v5, :cond_40

    .line 1154
    iget v9, v8, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v9, :cond_40

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const v10, 0x3f4ccccd    # 0.8f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_40

    .line 1155
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->WASTE_ON_ROAD:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {v8, v6}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    move v6, v3

    goto :goto_48

    :cond_40
    if-eqz v8, :cond_48

    .line 1158
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v6, p1, p2, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->remove(III)V

    const/4 v6, 0x1

    :cond_48
    :goto_48
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    :cond_4b
    if-eqz v6, :cond_58

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, p4

    .line 1162
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIZZZZLvm2/LuaValue;)V

    .line 1164
    :cond_58
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTree(II)Z

    move-result v4

    if-nez v4, :cond_76

    .line 1165
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 1166
    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v3

    if-nez v3, :cond_76

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1167
    :cond_76
    invoke-virtual {p0, p1, p2, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V

    .line 1168
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFences(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, p4

    .line 1169
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIZZZZLvm2/LuaValue;)V

    :cond_86
    :goto_86
    return-void
.end method

.method public destroyBuilding(Linfo/flowersoft/theotown/city/objects/Building;ZLvm2/LuaValue;)Z
    .registers 17

    .line 1181
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 1182
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    .line 1183
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    .line 1184
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    .line 1185
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    move-object/from16 v12, p3

    .line 1186
    invoke-virtual {p0, p1, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 1188
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object v6, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 p1, 0x1

    if-nez v6, :cond_43

    move v7, v4

    :goto_28
    add-int v1, v4, v2

    if-ge v7, v1, :cond_80

    move v6, v3

    :goto_2d
    add-int v1, v3, v0

    if-ge v6, v1, :cond_3e

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v8, p2

    .line 1192
    invoke-virtual/range {v5 .. v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIZZZZLvm2/LuaValue;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, p3

    goto :goto_2d

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v12, p3

    goto :goto_28

    .line 1195
    :cond_43
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v5

    if-ne v5, p1, :cond_71

    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v1

    if-ne v1, p1, :cond_71

    move v7, v4

    :goto_50
    add-int v1, v4, v2

    if-ge v7, v1, :cond_80

    move v1, v3

    :goto_55
    add-int v5, v3, v0

    if-ge v1, v5, :cond_6e

    .line 1198
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v8, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    move-object v5, p0

    move-object/from16 v10, p3

    move-object v9, v6

    move v6, v1

    .line 1199
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIILinfo/flowersoft/theotown/draft/BuildingDraft;Lvm2/LuaValue;)V

    move-object v6, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 1203
    :cond_71
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move-object v2, p0

    move-object/from16 v7, p3

    .line 1204
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIILinfo/flowersoft/theotown/draft/BuildingDraft;Lvm2/LuaValue;)V

    :cond_80
    return p1

    :cond_81
    return v1
.end method

.method public destroyTree(Linfo/flowersoft/theotown/city/objects/Tree;ZLvm2/LuaValue;)Z
    .registers 14

    .line 1175
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    .line 1176
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move v5, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIZZZZLvm2/LuaValue;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ensureInfluence()Z
    .registers 3

    .line 2191
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    if-nez v0, :cond_13

    .line 2192
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    .line 2193
    instance-of v1, v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    if-eqz v1, :cond_13

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 2195
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V
    .registers 11

    .line 1080
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1081
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    .line 1082
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->setBuilt()V

    .line 1083
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setBuildDay(J)V

    .line 1084
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V

    .line 1085
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->onBuiltTransitions:Ljava/util/List;

    if-eqz v0, :cond_8b

    .line 1086
    new-instance v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1088
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->onBuiltTransitions:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1090
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v5

    .line 1091
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v6, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 1092
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v7

    move-object v3, p1

    .line 1087
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 1093
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    goto :goto_8c

    :cond_8b
    move-object v3, p1

    .line 1096
    :goto_8c
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/city/BuildingList;->onBuildingFinished(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 1098
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    return-void

    :cond_a9
    move-object v3, p1

    move-object v6, p2

    .line 1099
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1100
    invoke-virtual {p0, v3, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    :cond_b4
    return-void
.end method

.method public finishBuildings(Ljava/util/List;Lvm2/LuaValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Lvm2/LuaValue;",
            ")V"
        }
    .end annotation

    .line 1074
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    .line 1075
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public finishUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V
    .registers 14

    .line 1533
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1534
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    .line 1536
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move-result-object v0

    .line 1537
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->finalizeUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 1538
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->onBuildingUpgraded(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 1540
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V

    .line 1542
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x7

    move-object v4, p0

    move-object v10, p2

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    :cond_4f
    return-void
.end method

.method public getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;
    .registers 7

    .line 2110
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    .line 2111
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    .line 2112
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    .line 2113
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2114
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object p1

    return-object p1

    .line 2116
    :cond_1b
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2117
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 p3, p3, 0x2

    rem-int/lit8 p3, p3, 0x4

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxTerrainLevel(IIII)I
    .registers 10

    const/4 v0, 0x0

    move v1, p2

    :goto_2
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2d

    move v2, p1

    :goto_7
    add-int v3, p1, p3

    if-ge v2, v3, :cond_2a

    .line 2000
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2001
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    return v0
.end method

.method public getMinTerrainLevel(IIII)I
    .registers 10

    const/16 v0, 0xf

    move v1, p2

    :goto_3
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2e

    move v2, p1

    :goto_8
    add-int v3, p1, p3

    if-ge v2, v3, :cond_2b

    .line 2012
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2013
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    return v0
.end method

.method public getPipeMask(Linfo/flowersoft/theotown/draft/PipeDraft;II)I
    .registers 7

    add-int/lit8 v0, p2, 0x1

    .line 1632
    invoke-virtual {p0, p1, v0, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isPipeJoinable(Linfo/flowersoft/theotown/draft/PipeDraft;II)Z

    move-result v0

    add-int/lit8 v1, p3, 0x1

    .line 1633
    invoke-virtual {p0, p1, p2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isPipeJoinable(Linfo/flowersoft/theotown/draft/PipeDraft;II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    .line 1634
    invoke-virtual {p0, p1, v1, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isPipeJoinable(Linfo/flowersoft/theotown/draft/PipeDraft;II)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x4

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    add-int/lit8 p3, p3, -0x1

    .line 1635
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isPipeJoinable(Linfo/flowersoft/theotown/draft/PipeDraft;II)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 v2, 0x8

    :cond_29
    add-int/2addr v0, v2

    return v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J
    .registers 5

    .line 1824
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/BusStopDraft;II)J
    .registers 4

    .line 1878
    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BusStopDraft;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)J
    .registers 13

    sub-int/2addr p4, p2

    int-to-float v0, p4

    .line 1850
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p5, p3

    int-to-float v1, p5

    .line 1851
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 1852
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/4 p5, 0x0

    move v2, p5

    move v3, v2

    :goto_1d
    if-gt v2, p4, :cond_41

    mul-int v4, v2, v0

    add-int/2addr v4, p2

    mul-int v5, v2, v1

    add-int/2addr v5, p3

    .line 1859
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_3e

    .line 1861
    :cond_2e
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 1862
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v4

    if-eq v4, p1, :cond_3e

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1867
    :cond_41
    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, p5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p2, p1, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/RailDraft;IIII)J
    .registers 6

    sub-int/2addr p4, p2

    .line 1886
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1888
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p3, p1, p2, p4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/RailDraft;II)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;II)J
    .registers 7

    .line 1871
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 1872
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 1873
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object p2

    if-ne p2, p1, :cond_1a

    return-wide v1

    .line 1874
    :cond_1a
    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/WireDraft;IIII)J
    .registers 14

    sub-int/2addr p4, p2

    int-to-float v0, p4

    .line 1828
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p5, p3

    int-to-float v1, p5

    .line 1829
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 1830
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1831
    iget p5, p1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1f
    if-gt v3, p4, :cond_43

    mul-int v5, v3, v0

    add-int/2addr v5, p2

    mul-int v6, v3, v1

    add-int/2addr v6, p3

    .line 1838
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-nez v7, :cond_30

    goto :goto_40

    .line 1840
    :cond_30
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v5, v6, p5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 1841
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v5

    if-eq v5, p1, :cond_40

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1846
    :cond_43
    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p2, p1, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/WireDraft;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J
    .registers 5

    .line 1820
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPriceForTerrain(Z)J
    .registers 4

    .line 1882
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceForTerrain(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRailMask(II)I
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 1658
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .line 1659
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 1660
    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x4

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    .line 1661
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 v2, 0x8

    :cond_29
    add-int/2addr v0, v2

    return v0
.end method

.method public getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;
    .registers 2

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    return-object v0
.end method

.method public getTerrainBuilder()Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;
    .registers 2

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->terrainBuilder:Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    return-object v0
.end method

.method public getWaterMask(II)I
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 1606
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .line 1607
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 1608
    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x4

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    .line 1609
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 v2, 0x8

    :cond_29
    add-int/2addr v0, v2

    return v0
.end method

.method public getWireMask(Linfo/flowersoft/theotown/draft/WireDraft;II)I
    .registers 7

    add-int/lit8 v0, p2, 0x1

    .line 1614
    invoke-virtual {p0, p1, v0, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWireJoinable(Linfo/flowersoft/theotown/draft/WireDraft;II)Z

    move-result v0

    add-int/lit8 v1, p3, 0x1

    .line 1615
    invoke-virtual {p0, p1, p2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWireJoinable(Linfo/flowersoft/theotown/draft/WireDraft;II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    .line 1616
    invoke-virtual {p0, p1, v1, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWireJoinable(Linfo/flowersoft/theotown/draft/WireDraft;II)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x4

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    add-int/lit8 p3, p3, -0x1

    .line 1617
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWireJoinable(Linfo/flowersoft/theotown/draft/WireDraft;II)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 v2, 0x8

    :cond_29
    add-int/2addr v0, v2

    return v0
.end method

.method public getZoneMask(IILinfo/flowersoft/theotown/draft/ZoneDraft;)I
    .registers 10

    add-int/lit8 v0, p1, 0x1

    .line 1673
    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v1

    add-int/lit8 v2, p2, 0x1

    .line 1674
    invoke-virtual {p0, p1, v2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    const/4 v3, 0x2

    goto :goto_12

    :cond_11
    move v3, v4

    :goto_12
    add-int/2addr v1, v3

    add-int/lit8 v3, p1, -0x1

    .line 1675
    invoke-virtual {p0, v3, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x4

    goto :goto_1e

    :cond_1d
    move v5, v4

    :goto_1e
    add-int/2addr v1, v5

    add-int/lit8 p2, p2, -0x1

    .line 1676
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/16 p1, 0x8

    goto :goto_2b

    :cond_2a
    move p1, v4

    :goto_2b
    add-int/2addr v1, p1

    const/16 p1, 0xf

    if-ne v1, p1, :cond_58

    .line 1679
    invoke-virtual {p0, v0, v2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result p1

    if-nez p1, :cond_38

    const/4 p1, 0x3

    goto :goto_39

    :cond_38
    move p1, v4

    .line 1680
    :goto_39
    invoke-virtual {p0, v3, v2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v1

    if-nez v1, :cond_41

    const/4 v1, 0x6

    goto :goto_42

    :cond_41
    move v1, v4

    :goto_42
    add-int/2addr p1, v1

    .line 1681
    invoke-virtual {p0, v3, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v1

    if-nez v1, :cond_4c

    const/16 v1, 0xc

    goto :goto_4d

    :cond_4c
    move v1, v4

    :goto_4d
    add-int/2addr p1, v1

    .line 1682
    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result p2

    if-nez p2, :cond_56

    const/16 v4, 0x9

    :cond_56
    add-int/2addr p1, v4

    return p1

    :cond_58
    return v1
.end method

.method public hasFence(II)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_10

    .line 2104
    invoke-virtual {p0, p1, p2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public hasRoadTransfer(IIIIIIJ)Z
    .registers 24

    move/from16 v0, p3

    move/from16 v1, p4

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_7
    const/4 v5, 0x1

    if-ge v3, v0, :cond_33

    if-nez v4, :cond_33

    add-int v7, v3, p1

    add-int/lit8 v8, p2, -0x1

    move-object v6, p0

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    .line 665
    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIJ)Z

    move-result v4

    if-nez v4, :cond_2f

    add-int v8, p2, v1

    move-object v6, p0

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIJ)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2f

    :cond_2d
    move v4, v2

    goto :goto_30

    :cond_2f
    :goto_2f
    move v4, v5

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_33
    move v3, v2

    :goto_34
    if-ge v3, v1, :cond_5f

    if-nez v4, :cond_5f

    add-int/lit8 v9, p1, -0x1

    add-int v10, v3, p2

    move-object v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-wide/from16 v13, p7

    .line 668
    invoke-virtual/range {v8 .. v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIJ)Z

    move-result v4

    if-nez v4, :cond_5b

    add-int v9, p1, v0

    move-object v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-wide/from16 v13, p7

    invoke-virtual/range {v8 .. v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIJ)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_5b

    :cond_59
    move v4, v2

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v4, v5

    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_5f
    return v4
.end method

.method public final hasRoadTransfer(IIIIJ)Z
    .registers 11

    .line 674
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 675
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasRoad(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    :goto_e
    if-gt p3, p4, :cond_2c

    .line 677
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 678
    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowTransfer:Z

    if-eqz v1, :cond_29

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    and-long/2addr v0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public hasRoadTransfer(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 11

    .line 659
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMinTerrainLevel()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-wide v7, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIIIJ)Z

    move-result p1

    return p1
.end method

.method public haveAccess(II)Z
    .registers 5

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/BuildMask;

    if-eqz v0, :cond_15

    .line 168
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/components/BuildMask;->accessGranted(II)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    if-eqz v9, :cond_2fd

    .line 496
    iget-boolean v4, v9, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v4, :cond_2fd

    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_2fd

    .line 500
    :cond_1a
    invoke-virtual {v9, v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v4

    .line 501
    invoke-virtual {v9, v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v5

    .line 503
    iget-object v6, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v6, :cond_185

    .line 504
    iget v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->maxCount:I

    if-ltz v3, :cond_3f

    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    .line 505
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3, v9}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    iget v6, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->maxCount:I

    if-lt v3, v6, :cond_3f

    .line 506
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->MaxCount:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_3f
    if-ltz v1, :cond_182

    if-ltz v2, :cond_182

    add-int v3, v1, v4

    .line 509
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    if-gt v3, v6, :cond_182

    add-int v6, v2, v5

    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_59

    goto/16 :goto_182

    .line 515
    :cond_59
    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v7

    move v8, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_66
    if-ge v8, v6, :cond_121

    move v14, v1

    :goto_69
    if-ge v14, v3, :cond_11b

    .line 519
    invoke-virtual {v0, v14, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v15

    if-eqz v15, :cond_74

    add-int/lit8 v13, v13, 0x1

    goto :goto_76

    :cond_74
    add-int/lit8 v12, v12, 0x1

    .line 526
    :goto_76
    iget-object v15, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15, v14, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v15

    if-nez v15, :cond_81

    .line 527
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 530
    :cond_81
    iget-object v15, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v15

    .line 531
    iget-object v11, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v11, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v11

    .line 532
    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v10

    .line 534
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v17

    move/from16 p6, v3

    if-eqz v17, :cond_a1

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v3

    if-eq v3, v7, :cond_a8

    :cond_a1
    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    if-nez v3, :cond_a8

    .line 535
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Terrain:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 538
    :cond_a8
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsShoreline:Z

    if-nez v3, :cond_b5

    .line 539
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Terrain:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 542
    :cond_b5
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result v3

    if-nez v3, :cond_118

    invoke-virtual {v0, v14, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result v3

    if-nez v3, :cond_c4

    goto :goto_118

    .line 546
    :cond_c4
    iget-object v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v3, :cond_d9

    if-eqz v11, :cond_d9

    invoke-virtual {v3, v11}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSimilar(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v3

    if-nez v3, :cond_d9

    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz v3, :cond_d9

    if-nez p4, :cond_d9

    .line 547
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Zone:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 550
    :cond_d9
    iget-object v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v3, :cond_ec

    invoke-virtual {v3, v11}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v3

    if-nez v3, :cond_ec

    if-eqz v11, :cond_e9

    iget-boolean v3, v11, Linfo/flowersoft/theotown/draft/ZoneDraft;->persistent:Z

    if-eqz v3, :cond_ec

    .line 551
    :cond_e9
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Zone:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_ec
    if-eqz v10, :cond_f9

    .line 553
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v3

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->persistent:Z

    if-eqz v3, :cond_f9

    .line 554
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Blocked:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_f9
    if-eqz v10, :cond_112

    .line 557
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v3

    if-nez v3, :cond_10f

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v3

    if-nez v3, :cond_10f

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    if-nez v3, :cond_112

    .line 558
    :cond_10f
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Blocked:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_112
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p6

    goto/16 :goto_69

    .line 543
    :cond_118
    :goto_118
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Blocked:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_11b
    move/from16 p6, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_66

    .line 563
    :cond_121
    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    if-eqz v3, :cond_12e

    iget-boolean v6, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-nez v6, :cond_12e

    if-lez v12, :cond_12e

    .line 564
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Water:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 567
    :cond_12e
    iget-boolean v6, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-eqz v6, :cond_139

    if-nez v3, :cond_139

    if-lez v13, :cond_139

    .line 568
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Land:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_139
    if-eqz v3, :cond_149

    if-eqz v6, :cond_149

    if-eqz v13, :cond_141

    if-nez v12, :cond_149

    :cond_141
    if-nez v13, :cond_146

    .line 573
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Water:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 575
    :cond_146
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Land:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 578
    :cond_149
    iget v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->minWaterTiles:I

    const/4 v6, -0x1

    if-le v3, v6, :cond_153

    if-le v3, v13, :cond_153

    .line 579
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Water:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 582
    :cond_153
    iget-boolean v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    if-eqz v3, :cond_17e

    iget-object v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v3, :cond_17e

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v3, :cond_17e

    if-nez p5, :cond_17e

    .line 583
    invoke-virtual {v0, v1, v2, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMinTerrainLevel(IIII)I

    move-result v3

    .line 584
    invoke-virtual {v0, v1, v2, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMaxTerrainLevel(IIII)I

    move-result v6

    add-int/lit8 v3, v3, -0x1

    .line 585
    iget-wide v7, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    move/from16 v26, v5

    move v5, v3

    move v3, v4

    move/from16 v4, v26

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(IIIIIIJ)Z

    move-result v3

    move v7, v1

    move v8, v2

    if-nez v3, :cond_2e4

    .line 586
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_17e
    move v7, v1

    move v8, v2

    goto/16 :goto_2e4

    .line 510
    :cond_182
    :goto_182
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_185
    move v7, v1

    move v8, v2

    if-gez v3, :cond_18b

    const/4 v10, 0x0

    goto :goto_18c

    :cond_18b
    move v10, v3

    .line 594
    :goto_18c
    invoke-virtual {v6, v10}, Linfo/flowersoft/theotown/draft/Composition;->listXY(I)[I

    move-result-object v11

    rsub-int/lit8 v1, v10, 0x4

    .line 595
    rem-int/lit8 v1, v1, 0x4

    .line 596
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v2

    move v3, v8

    .line 598
    :goto_19f
    iget-object v4, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/draft/Composition;->getHeight(I)I

    move-result v4

    add-int/2addr v4, v8

    if-ge v3, v4, :cond_1dc

    move v4, v7

    .line 599
    :goto_1a9
    iget-object v5, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v5, v1}, Linfo/flowersoft/theotown/draft/Composition;->getWidth(I)I

    move-result v5

    add-int/2addr v5, v7

    if-ge v4, v5, :cond_1d9

    .line 600
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v4, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-nez v5, :cond_1bd

    .line 601
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    .line 603
    :cond_1bd
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v4, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 604
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v6

    if-eqz v6, :cond_1cf

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v5

    if-eq v5, v2, :cond_1d6

    :cond_1cf
    iget-boolean v5, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v5, :cond_1d6

    .line 605
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Terrain:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_1d6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a9

    :cond_1d9
    add-int/lit8 v3, v3, 0x1

    goto :goto_19f

    :cond_1dc
    const/4 v12, 0x0

    .line 609
    :goto_1dd
    array-length v2, v11

    if-ge v12, v2, :cond_24e

    .line 610
    aget v2, v11, v12

    add-int/lit8 v3, v12, 0x1

    .line 611
    aget v3, v11, v3

    .line 612
    iget-object v4, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getBuilding(II)Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    move-result-object v4

    if-eqz v4, :cond_249

    .line 614
    iget-object v5, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v5, v2, v3, v1}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v5

    .line 615
    iget-object v6, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v6, v2, v3, v1}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v6

    .line 616
    iget-object v13, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v14, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v14, :cond_207

    iget v14, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    rem-int/lit8 v14, v14, 0x4

    move/from16 v21, v14

    goto :goto_209

    :cond_207
    const/16 v21, 0x0

    :goto_209
    iget v14, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->x:I

    iget v15, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v19, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v13

    move/from16 v22, v14

    move/from16 v23, v15

    invoke-static/range {v17 .. v25}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z

    move-result v1

    move/from16 v13, v19

    if-eqz v1, :cond_24a

    .line 617
    iget-object v1, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v2, :cond_235

    rem-int/lit8 v2, v10, 0x4

    iget v3, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    add-int/2addr v2, v3

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    goto :goto_237

    :cond_235
    iget v2, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    :goto_237
    add-int v3, v7, v5

    add-int v4, v8, v6

    move/from16 v5, p5

    move v6, v2

    move v2, v3

    move v3, v4

    move/from16 v4, p4

    .line 619
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object v1

    if-eqz v1, :cond_24a

    return-object v1

    :cond_249
    move v13, v1

    :cond_24a
    add-int/lit8 v12, v12, 0x2

    move v1, v13

    goto :goto_1dd

    :cond_24e
    move v13, v1

    const/4 v1, 0x0

    .line 627
    :goto_250
    iget-object v2, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2ab

    .line 628
    iget-object v2, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 629
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 630
    iget-object v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    invoke-virtual {v3, v4, v5, v13}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v3

    add-int/2addr v3, v7

    .line 631
    iget-object v4, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v6, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    invoke-virtual {v4, v5, v6, v13}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v4

    add-int/2addr v4, v8

    .line 632
    iget-object v5, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v6, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    iget v10, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-virtual {v5, v6, v10, v13}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v5

    add-int/2addr v5, v7

    .line 633
    iget-object v6, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v10, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-virtual {v6, v10, v2, v13}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v2

    add-int/2addr v2, v8

    .line 634
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v6, v3, v4, v5, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 635
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-nez v2, :cond_2a8

    .line 636
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_2a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_250

    :cond_2ab
    const/4 v1, 0x0

    .line 640
    :goto_2ac
    iget-object v2, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e4

    .line 641
    iget-object v2, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    .line 642
    iget-object v3, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->x:I

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->y:I

    invoke-virtual {v3, v4, v5, v13}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v3

    add-int/2addr v3, v7

    .line 643
    iget-object v4, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->x:I

    iget v6, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->y:I

    invoke-virtual {v4, v5, v6, v13}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v4

    add-int/2addr v4, v8

    .line 644
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v2

    if-nez v2, :cond_2e1

    .line 645
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_2e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ac

    .line 650
    :cond_2e4
    :goto_2e4
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    const-string v2, "isBuildable"

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v1

    if-eqz v1, :cond_2fa

    const/4 v2, 0x0

    .line 651
    invoke-virtual {v1, v7, v8, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    move-result v1

    if-nez v1, :cond_2fa

    .line 652
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1

    :cond_2fa
    const/16 v16, 0x0

    return-object v16

    .line 497
    :cond_2fd
    :goto_2fd
    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 492
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;II)Z
    .registers 7

    .line 710
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 711
    :cond_6
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 712
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 713
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-ltz v0, :cond_31

    :goto_1e
    if-ltz v0, :cond_31

    .line 715
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    .line 716
    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_31
    return v1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Z
    .registers 7

    .line 724
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 725
    :cond_6
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 726
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p2

    .line 727
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    return p1

    :cond_1d
    return v1
.end method

.method public final isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 5

    if-eqz p2, :cond_22

    .line 734
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowBusStop:Z

    if-eqz v0, :cond_22

    iget v0, p2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_22

    .line 737
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Linfo/flowersoft/theotown/draft/BusStopDraft;->fitsRoad(JI)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z
    .registers 10

    .line 350
    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    sub-int p1, p4, p2

    int-to-float v1, p1

    .line 351
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    sub-int v2, p5, p3

    int-to-float v3, v2

    .line 352
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    .line 353
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz v1, :cond_27

    if-eqz v3, :cond_27

    return v0

    .line 357
    :cond_27
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v2

    if-nez v2, :cond_2e

    return v0

    .line 358
    :cond_2e
    invoke-virtual {p0, p4, p5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result p4

    if-nez p4, :cond_35

    return v0

    :cond_35
    move p4, v0

    :goto_36
    if-gt p4, p1, :cond_48

    mul-int p5, p4, v1

    add-int/2addr p5, p2

    mul-int v2, p4, v3

    add-int/2addr v2, p3

    .line 364
    invoke-virtual {p0, p5, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result p5

    if-nez p5, :cond_45

    return v0

    :cond_45
    add-int/lit8 p4, p4, 0x1

    goto :goto_36

    :cond_48
    const/4 p1, 0x1

    return p1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/RailDraft;IIII)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 371
    iget-boolean v6, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v7, 0x0

    if-nez v6, :cond_12

    return v7

    :cond_12
    if-eq v2, v4, :cond_17

    if-eq v3, v5, :cond_17

    return v7

    .line 373
    :cond_17
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v6

    if-nez v6, :cond_27

    :cond_23
    move/from16 v16, v7

    goto/16 :goto_136

    .line 374
    :cond_27
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_33
    move/from16 v16, v7

    goto/16 :goto_136

    .line 375
    :cond_37
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v6

    if-nez v6, :cond_43

    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v6

    if-eqz v6, :cond_47

    :cond_43
    move/from16 v16, v7

    goto/16 :goto_136

    .line 377
    :cond_47
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v6

    if-nez v6, :cond_57

    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_57
    move/from16 v16, v7

    goto/16 :goto_136

    .line 379
    :cond_5b
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6

    sub-int/2addr v4, v2

    int-to-float v8, v4

    .line 381
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v5, v3

    int-to-float v9, v5

    .line 382
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v9, v9

    .line 383
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 384
    invoke-static {v8, v9}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v5

    .line 385
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v6

    move v10, v7

    :goto_84
    const/4 v11, 0x1

    if-gt v10, v4, :cond_135

    mul-int v12, v10, v8

    add-int/2addr v12, v2

    mul-int v13, v10, v9

    add-int/2addr v13, v3

    .line 390
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v14

    .line 392
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v15

    if-eqz v15, :cond_9f

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v14

    if-eq v14, v6, :cond_a4

    :cond_9f
    iget-boolean v14, v1, Linfo/flowersoft/theotown/draft/RailDraft;->supportsSlope:Z

    if-nez v14, :cond_a4

    return v7

    .line 396
    :cond_a4
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v14

    .line 397
    invoke-virtual {v0, v12, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v15

    if-nez v15, :cond_cd

    if-eqz v14, :cond_cd

    .line 398
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v15

    move/from16 v16, v7

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/city/Zones;->OTHER:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v15, v7, :cond_cc

    .line 399
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v7

    if-nez v7, :cond_cc

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_cf

    :cond_cc
    return v16

    :cond_cd
    move/from16 v16, v7

    .line 403
    :cond_cf
    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v12, v13, v11}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v7

    .line 404
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v15, 0x2

    invoke-virtual {v14, v12, v13, v15}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v14

    if-eqz v14, :cond_df

    return v16

    .line 406
    :cond_df
    iget-object v14, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v12, v13, v11}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v11

    if-eqz v11, :cond_ec

    .line 407
    iget v11, v11, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v11, :cond_ec

    return v16

    :cond_ec
    if-eqz v7, :cond_f5

    .line 409
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result v7

    if-eqz v7, :cond_f5

    return v16

    .line 411
    :cond_f5
    invoke-virtual {v0, v12, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v7

    if-eqz v7, :cond_120

    .line 412
    invoke-virtual {v0, v12, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRailMask(II)I

    move-result v7

    .line 413
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v11

    invoke-static {v5, v11}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v11

    .line 412
    invoke-static {v7, v11}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v7

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v7

    if-le v7, v15, :cond_120

    .line 414
    invoke-virtual {v0, v12, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v7

    if-nez v7, :cond_11f

    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v7

    if-eqz v7, :cond_120

    :cond_11f
    return v16

    .line 418
    :cond_120
    iget-object v7, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v7

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/city/Zones;->MILITARY:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v7, v11, :cond_12f

    return v16

    :cond_12f
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    goto/16 :goto_84

    :cond_135
    return v11

    :goto_136
    return v16
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z
    .registers 14

    .line 283
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 284
    :cond_6
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 285
    :cond_d
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 286
    :cond_14
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    if-nez v0, :cond_1f

    return v1

    .line 287
    :cond_1f
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->land:Z

    if-nez v0, :cond_2a

    return v1

    .line 289
    :cond_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 290
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    .line 291
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v4, -0x1

    invoke-virtual {v3, p2, p3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    .line 292
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    .line 293
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, p3, v6}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    .line 294
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v7

    .line 296
    iget v8, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->buildHeight:I

    :goto_52
    const/16 v9, 0x10

    if-gt v8, v9, :cond_68

    .line 297
    iget-object v9, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, p2, p3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v9

    if-eqz v9, :cond_65

    .line 298
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Road;->isPile()Z

    move-result v9

    if-eqz v9, :cond_65

    return v1

    :cond_65
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_68
    if-eqz v3, :cond_6e

    .line 301
    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v3, :cond_94

    :cond_6e
    if-nez v4, :cond_94

    if-nez v5, :cond_94

    if-nez v2, :cond_94

    if-eqz v7, :cond_81

    .line 305
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Rail;->isPile()Z

    move-result v2

    if-nez v2, :cond_94

    iget v2, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->buildHeight:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_94

    .line 306
    :cond_81
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v0

    if-eqz v0, :cond_8b

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->supportsSlope:Z

    if-eqz p1, :cond_94

    :cond_8b
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 307
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result p1

    if-nez p1, :cond_94

    return v6

    :cond_94
    return v1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z
    .registers 15

    .line 311
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sub-int v0, p4, p2

    int-to-float v2, v0

    .line 312
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    sub-int v3, p5, p3

    int-to-float v4, v3

    .line 313
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    .line 314
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 315
    invoke-static {v2, v4}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v3

    .line 316
    iget p1, p1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    if-eqz v2, :cond_2d

    if-eqz v4, :cond_2d

    return v1

    .line 320
    :cond_2d
    invoke-virtual {p0, p2, p3, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWirePileBuildable(III)Z

    move-result v5

    if-nez v5, :cond_34

    return v1

    .line 321
    :cond_34
    invoke-virtual {p0, p4, p5, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWirePileBuildable(III)Z

    move-result p4

    if-nez p4, :cond_3b

    return v1

    :cond_3b
    move p4, v1

    :goto_3c
    if-gt p4, v0, :cond_85

    mul-int p5, p4, v2

    add-int/2addr p5, p2

    mul-int v5, p4, v4

    add-int/2addr v5, p3

    .line 326
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, p5, v5, p1}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v6

    .line 327
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, p5, v5, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v6, :cond_63

    .line 329
    invoke-virtual {p0, p5, v5, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWirePileBuildable(III)Z

    move-result v8

    if-nez v8, :cond_63

    .line 330
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result v6

    invoke-static {v3, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_63

    return v1

    :cond_63
    if-eqz v7, :cond_6c

    .line 333
    iget v6, v7, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v6, :cond_6c

    if-nez p1, :cond_6c

    return v1

    .line 334
    :cond_6c
    invoke-virtual {p0, p5, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(II)Z

    move-result v6

    if-nez v6, :cond_78

    invoke-virtual {p0, p5, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuilding(II)Z

    move-result v6

    if-eqz v6, :cond_7b

    :cond_78
    if-ltz p1, :cond_7b

    return v1

    .line 335
    :cond_7b
    invoke-virtual {p0, p5, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result p5

    if-nez p5, :cond_82

    return v1

    :cond_82
    add-int/lit8 p4, p4, 0x1

    goto :goto_3c

    :cond_85
    const/4 p1, 0x1

    return p1
.end method

.method public isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z
    .registers 6

    .line 688
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 689
    :cond_6
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->haveAccess(II)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 690
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRail(II)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1e
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->persistent:Z

    if-eqz v0, :cond_53

    .line 691
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 693
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v0

    if-nez v0, :cond_31

    return v1

    .line 697
    :cond_31
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_52

    .line 698
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->persistent:Z

    if-eqz v0, :cond_52

    .line 699
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 700
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v0

    if-nez v0, :cond_52

    if-ne p1, p2, :cond_51

    goto :goto_52

    :cond_51
    return v1

    :cond_52
    :goto_52
    return p3

    :cond_53
    return v1
.end method

.method public isBuilding(II)Z
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isLand(II)Z
    .registers 4

    .line 105
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public isNearLand(II)Z
    .registers 5

    add-int/lit8 v0, p1, 0x1

    .line 1601
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v0

    if-nez v0, :cond_23

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v0

    if-nez v0, :cond_23

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    return v1
.end method

.method public isNearSlope(II)Z
    .registers 8

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    move v0, v1

    :goto_17
    const/16 v2, 0x8

    if-gt v0, v2, :cond_3d

    .line 159
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    add-int/2addr v2, p1

    .line 160
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v3, p2

    .line 161
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    :cond_3a
    mul-int/lit8 v0, v0, 0x2

    goto :goto_17

    :cond_3d
    const/4 p1, 0x0

    return p1
.end method

.method public isNearWater(II)Z
    .registers 8

    add-int/lit8 v0, p1, -0x1

    .line 1596
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3b

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v3

    if-nez v3, :cond_3b

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, p1, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v4

    if-nez v4, :cond_3b

    add-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 1597
    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p1, 0x0

    return p1

    :cond_3b
    :goto_3b
    return v2
.end method

.method public isPipe(II)Z
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isPipeJoinable(Linfo/flowersoft/theotown/draft/PipeDraft;II)Z
    .registers 6

    .line 1639
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1640
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 1642
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object p2

    if-ne p2, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public isRail(II)Z
    .registers 5

    .line 1665
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1666
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    return v1
.end method

.method public isRoad(II)Z
    .registers 4

    .line 113
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isRoadDecorationBuildable(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 5

    if-eqz p2, :cond_18

    .line 1959
    iget v0, p2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 1960
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->fitsRoad(JI)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public isTerrainBuildable(ZII)Z
    .registers 7

    .line 135
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 137
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 138
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    if-eqz p1, :cond_1f

    .line 140
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v2

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->dry:Z

    if-eqz v2, :cond_1f

    return v1

    :cond_1f
    if-eqz v0, :cond_34

    .line 141
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_33
    return v1

    :cond_34
    if-eqz p1, :cond_45

    .line 144
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWaterPlaceable(II)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    return v1

    .line 146
    :cond_45
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result p1

    return p1
.end method

.method public isTerrainHeightUnlocked(II)Z
    .registers 5

    .line 1894
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 1895
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1896
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    const/4 p1, 0x0

    return p1

    :cond_24
    return v1
.end method

.method public isTree(II)Z
    .registers 4

    .line 109
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isValid(II)Z
    .registers 4

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    return p1
.end method

.method public isWater(II)Z
    .registers 4

    .line 101
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public isWaterPlaceable(II)Z
    .registers 4

    .line 151
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_8
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isNearSlope(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isWire(II)Z
    .registers 4

    .line 121
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasWire(II)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isWireJoinable(Linfo/flowersoft/theotown/draft/WireDraft;II)Z
    .registers 7

    .line 1621
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1622
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v2, p1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    invoke-virtual {v0, p2, p3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 1624
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object p2

    if-ne p2, p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method

.method public final isWirePileBuildable(III)Z
    .registers 9

    .line 342
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 344
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    .line 345
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-ltz p3, :cond_3b

    .line 346
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-nez v0, :cond_3a

    if-lez p3, :cond_2d

    if-nez v2, :cond_3a

    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p3

    if-nez p3, :cond_3a

    :cond_2d
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuilding(II)Z

    move-result p3

    if-nez p3, :cond_3a

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isZone(II)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    return v3
.end method

.method public isZone(II)Z
    .registers 4

    .line 117
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)Z
    .registers 5

    .line 1689
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    if-ne p1, p3, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z
    .registers 9

    .line 1558
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 1559
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-ne v0, p1, :cond_12

    return v1

    .line 1565
    :cond_12
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getZoneCounter()[I

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    .line 1567
    iget v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v4, v2, v0

    sub-int/2addr v4, v3

    aput v4, v2, v0

    :cond_22
    if-eqz p1, :cond_2b

    .line 1570
    iget v0, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v4, v2, v0

    add-int/2addr v4, v3

    aput v4, v2, v0

    .line 1573
    :cond_2b
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    :goto_2e
    const/4 v0, 0x3

    if-ge v1, v0, :cond_3f

    .line 1576
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1578
    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1582
    :cond_3f
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTree(II)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1583
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 1585
    :cond_4b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3, p1}, Linfo/flowersoft/theotown/city/Tiles;->setZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 1587
    invoke-virtual {p0, p2, p3, v3, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->updateZoneSizeForInfluencedTiles(IIII)V

    .line 1588
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    return v3

    :cond_57
    return v1
.end method

.method public rebuildAfterReUndo(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 9

    .line 1429
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRaw(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 1430
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    const/16 v5, 0x9

    sget-object v6, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    return-void
.end method

.method public remove(IIIILvm2/LuaValue;)V
    .registers 9

    move v0, p2

    :goto_1
    add-int v1, p2, p4

    if-ge v0, v1, :cond_13

    move v1, p1

    :goto_6
    add-int v2, p1, p3

    if-ge v1, v2, :cond_10

    .line 1319
    invoke-virtual {p0, v1, v0, p5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public remove(IILvm2/LuaValue;)V
    .registers 6

    .line 1294
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTree(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    :cond_f
    const/16 v0, 0x10

    :goto_11
    if-ltz v0, :cond_23

    .line 1297
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v1, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->remove(III)V

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 1300
    :cond_23
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1302
    invoke-virtual {p0, v0, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    :cond_2e
    const/4 p3, 0x2

    :goto_2f
    if-ltz p3, :cond_3f

    .line 1306
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1307
    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    :cond_3c
    add-int/lit8 p3, p3, -0x1

    goto :goto_2f

    .line 1310
    :cond_3f
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 1312
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Rail;)V

    :cond_4a
    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V
    .registers 14

    .line 1451
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    .line 1452
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    .line 1453
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v6, p2

    .line 1455
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    .line 1457
    iget-object p2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onDestroyTransitions:Ljava/util/List;

    if-eqz p2, :cond_47

    .line 1458
    new-instance v4, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object p2, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, p2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1459
    iget-object v5, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onDestroyTransitions:Ljava/util/List;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 1462
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v10

    move-object v6, p1

    .line 1459
    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 1463
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    goto :goto_48

    :cond_47
    move-object v6, p1

    .line 1466
    :goto_48
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p2

    invoke-virtual {p0, v2, v3, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    move p1, v3

    .line 1468
    :goto_54
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p2

    add-int/2addr p2, v3

    if-ge p1, p2, :cond_6f

    move p2, v2

    .line 1469
    :goto_5c
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_6c

    .line 1470
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v4, 0x0

    invoke-virtual {v1, p2, p1, v4}, Linfo/flowersoft/theotown/city/Tiles;->setBuilding(IILinfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5c

    :cond_6c
    add-int/lit8 p1, p1, 0x1

    goto :goto_54

    .line 1474
    :cond_6f
    iget-object p1, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1, v6}, Linfo/flowersoft/theotown/city/BuildingList;->remove(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p2

    invoke-virtual {p0, v2, v3, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V

    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/BusStop;II)V
    .registers 6

    .line 1416
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 1417
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    .line 1418
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1420
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v1

    if-ne v1, p1, :cond_20

    const/4 v1, 0x0

    .line 1421
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 1422
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->remove(Ljava/lang/Object;)Z

    .line 1425
    :cond_20
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Pipe;II)V
    .registers 5

    .line 1407
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1409
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 1410
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->setPipe(IILinfo/flowersoft/theotown/city/objects/Pipe;)V

    .line 1411
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->alignPipes(II)V

    :cond_1a
    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Rail;)V
    .registers 10

    .line 1492
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v0

    .line 1493
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v1

    .line 1494
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Linfo/flowersoft/theotown/city/Tiles;->setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V

    .line 1495
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v1, v0

    :goto_19
    const/16 v2, 0x8

    if-gt v1, v2, :cond_96

    .line 1498
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getAlign()I

    move-result v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v2

    if-eqz v2, :cond_93

    move v2, v0

    .line 1499
    :goto_28
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_93

    .line 1500
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v3

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 1501
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v4

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 1502
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-nez v5, :cond_4d

    goto :goto_93

    .line 1503
    :cond_4d
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v5

    if-eqz v5, :cond_93

    .line 1506
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRailMask(II)I

    move-result v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Rail;->getAlign()I

    move-result v7

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/objects/Rail;->setAlign(I)V

    .line 1507
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Rail;->isPile()Z

    move-result v6

    if-eqz v6, :cond_68

    goto :goto_93

    .line 1510
    :cond_68
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTree(II)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_87

    .line 1513
    :cond_83
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/city/objects/Rail;->setPile(Z)V

    goto :goto_93

    .line 1511
    :cond_87
    :goto_87
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_93
    :goto_93
    mul-int/lit8 v1, v1, 0x2

    goto :goto_19

    :cond_96
    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V
    .registers 5

    .line 1325
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 1327
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 1329
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V
    .registers 14

    const/4 v0, 0x0

    .line 1344
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    .line 1349
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object p1

    iget v5, p1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    .line 1350
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 1351
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v1, p2

    move v3, v1

    move v2, p3

    move v4, v2

    .line 1353
    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a7

    .line 1354
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1355
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result p3

    rem-int p3, p2, p3

    .line 1356
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    div-int/2addr p2, v0

    .line 1357
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p3, p2, v5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1359
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v6

    invoke-virtual {p0, v6, p3, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getWireMask(Linfo/flowersoft/theotown/draft/WireDraft;II)I

    move-result v6

    if-nez v6, :cond_22

    :cond_59
    const/4 v6, 0x1

    :goto_5a
    const/16 v7, 0x8

    if-gt v6, v7, :cond_86

    .line 1361
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v7

    if-eqz v7, :cond_83

    if-ltz v5, :cond_83

    .line 1362
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v7

    add-int/2addr v7, p3

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v8

    add-int/2addr v8, p2

    iget-object v9, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_83
    mul-int/lit8 v6, v6, 0x2

    goto :goto_5a

    .line 1365
    :cond_86
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1366
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1367
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1368
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1370
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v6

    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 1371
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v6, 0x0

    invoke-virtual {v0, p3, p2, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->setWire(IIILinfo/flowersoft/theotown/city/objects/Wire;)V

    goto/16 :goto_22

    :cond_a7
    move-object v0, p0

    .line 1375
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->alignWires(IIIII)V

    return-void
.end method

.method public removeAllRoadDecorations(IIILvm2/LuaValue;)V
    .registers 13

    .line 1394
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_33

    .line 1396
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_33

    .line 1397
    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v2

    .line 1398
    iget v5, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v6, 0x6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    .line 1399
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p1

    if-le p1, v0, :cond_2d

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object p1

    if-ne p1, v2, :cond_2d

    .line 1400
    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->removeDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    move p1, v3

    move p2, v4

    move-object p4, v7

    goto :goto_e

    :cond_33
    return-void
.end method

.method public removeFence(III)V
    .registers 8

    .line 2167
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    .line 2168
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    .line 2169
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    .line 2171
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 2172
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, p3, v3}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    .line 2174
    :cond_1a
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2175
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 p3, p3, 0x2

    rem-int/lit8 p3, p3, 0x4

    invoke-virtual {v0, p1, p2, p3, v3}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    :cond_2d
    return-void
.end method

.method public removeFenceWithin(IIII)V
    .registers 11

    if-nez p1, :cond_6

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p3, p3, 0x1

    :cond_6
    if-nez p2, :cond_c

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p4, p4, 0x1

    :cond_c
    add-int v0, p1, p3

    .line 2049
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_18

    add-int/lit8 p3, p3, 0x1

    :cond_18
    add-int v0, p2, p4

    .line 2052
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_24

    add-int/lit8 p4, p4, 0x1

    :cond_24
    move v0, p2

    :goto_25
    add-int v1, p2, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_53

    move v1, p1

    :cond_2c
    :goto_2c
    add-int v4, p1, p3

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_50

    .line 2058
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2059
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v0, v5, v2}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    .line 2061
    :cond_3f
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2062
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v0, v5, v2}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    goto :goto_2c

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_53
    :goto_53
    add-int/lit8 p4, v1, -0x1

    if-ge p2, p4, :cond_7f

    move p4, p1

    :goto_58
    add-int v0, p1, p3

    if-ge p4, v0, :cond_7c

    .line 2069
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p4, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2070
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p4, p2, v3, v2}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    .line 2072
    :cond_69
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, p4, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2073
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v5, 0x3

    invoke-virtual {v0, p4, v4, v5, v2}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    :cond_79
    add-int/lit8 p4, p4, 0x1

    goto :goto_58

    :cond_7c
    add-int/lit8 p2, p2, 0x1

    goto :goto_53

    :cond_7f
    return-void
.end method

.method public removeFences(II)V
    .registers 4

    const/4 v0, 0x0

    .line 2160
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    const/4 v0, 0x1

    .line 2161
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    const/4 v0, 0x2

    .line 2162
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    const/4 v0, 0x3

    .line 2163
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    return-void
.end method

.method public removePunch(Linfo/flowersoft/theotown/city/objects/Wire;II)V
    .registers 7

    .line 1333
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result v0

    .line 1334
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 1335
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v2

    if-ne v2, v0, :cond_21

    const/16 v2, 0xf

    if-eq v0, v2, :cond_21

    .line 1336
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    const/4 p2, 0x0

    .line 1337
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    return-void

    .line 1339
    :cond_21
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    return-void
.end method

.method public removeRailPile(Linfo/flowersoft/theotown/city/objects/Rail;)V
    .registers 5

    .line 1480
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->isPile()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getDraft()Linfo/flowersoft/theotown/draft/RailDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RailDraft;->onGround:Z

    if-nez v0, :cond_2d

    .line 1481
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Rail;->getAlign()I

    move-result v0

    .line 1482
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2a

    .line 1483
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_25

    goto :goto_2a

    :cond_25
    const/4 v0, 0x0

    .line 1486
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Rail;->setPile(Z)V

    return-void

    .line 1484
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Rail;)V

    :cond_2d
    return-void
.end method

.method public removeRoad(III)V
    .registers 5

    .line 1379
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->roadBuilder:Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->remove(III)V

    return-void
.end method

.method public removeRoadDecoration(IIIILvm2/LuaValue;)V
    .registers 14

    .line 1383
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_2d

    if-ltz p4, :cond_2d

    .line 1384
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    if-ge p4, v0, :cond_2d

    .line 1385
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v2

    .line 1386
    iget v5, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v6, 0x6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    .line 1387
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p1

    if-le p1, p4, :cond_2d

    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object p1

    if-ne p1, v2, :cond_2d

    .line 1388
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Road;->removeDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    :cond_2d
    return-void
.end method

.method public removeTileInfluence(II)V
    .registers 8

    .line 1807
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->ensureInfluence()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1808
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getModifyCounter(II)I

    move-result v0

    if-nez v0, :cond_1c

    .line 1810
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->removeBaseInfluenceFromTile(II)V

    goto :goto_38

    .line 1812
    :cond_1c
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong modify counter on removing! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CityModifier"

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v1, :cond_40

    .line 1815
    :goto_38
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->setModifyCounter(III)V

    return-void

    .line 1813
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    return-void
.end method

.method public removeTileInfluence(IIII)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_14

    move v2, v0

    :goto_5
    if-ge v2, p4, :cond_11

    add-int v3, p1, v1

    add-int v4, p2, v2

    .line 1801
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method public removeUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 7

    .line 1547
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 1548
    :cond_12
    :goto_12
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    .line 1550
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->finalizeUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 1551
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->removeUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 1553
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    invoke-virtual {p0, p2, v0, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V

    return-void
.end method

.method public setBridge(Linfo/flowersoft/theotown/city/objects/Road;I)V
    .registers 12

    .line 172
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->countBridges()I

    move-result v0

    rem-int/2addr p2, v0

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 175
    iput p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    .line 176
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a3

    .line 179
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 180
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v2

    .line 183
    iget-object v3, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v3, :cond_33

    or-int/lit8 v2, v2, 0xf

    :cond_33
    const/4 v3, 0x1

    :goto_34
    const/16 v4, 0x8

    if-gt v3, v4, :cond_11

    .line 186
    invoke-static {v3, v2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 187
    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 188
    iget v5, p1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 189
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 190
    iget v6, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 191
    iget v7, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v7, v3, :cond_61

    add-int/lit8 v6, v6, 0x1

    .line 192
    :cond_61
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v4, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_7e

    .line 195
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v4, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v7, :cond_85

    .line 196
    iget v4, v7, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v5

    if-eq v4, v5, :cond_85

    :goto_7c
    move-object v7, v8

    goto :goto_85

    .line 197
    :cond_7e
    iget v4, v7, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v4, :cond_85

    if-eq v4, v3, :cond_85

    goto :goto_7c

    :cond_85
    :goto_85
    if-eqz v7, :cond_a0

    .line 201
    iget-object v4, v7, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v5, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-ne v4, v5, :cond_a0

    iget v4, v7, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    if-eq v4, p2, :cond_a0

    iget v4, v7, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gtz v4, :cond_9b

    iget v5, v7, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v5, :cond_a0

    if-nez v4, :cond_a0

    .line 202
    :cond_9b
    iput p2, v7, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    .line 203
    invoke-interface {v0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_a0
    mul-int/lit8 v3, v3, 0x2

    goto :goto_34

    :cond_a3
    return-void
.end method

.method public setBuildingPerformance(Linfo/flowersoft/theotown/city/objects/Building;F)V
    .registers 7

    .line 1649
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result v0

    sub-float v0, p2, v0

    .line 1650
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3a

    .line 1651
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    .line 1652
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setPerformance(F)V

    .line 1653
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    invoke-virtual {p0, p2, v0, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V

    :cond_3a
    return-void
.end method

.method public setTerrainHeight(IIIII)V
    .registers 7

    .line 1902
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainHeightUnlocked(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1903
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    int-to-byte p2, p3

    .line 1904
    invoke-virtual {p1, p4, p5, p2}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    :cond_18
    return-void
.end method

.method public setTerrainHeight(IIILvm2/LuaValue;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0xf

    move/from16 v4, p3

    .line 1909
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1912
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_132

    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainHeightUnlocked(II)Z

    move-result v5

    if-eqz v5, :cond_132

    .line 1913
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    int-to-byte v3, v3

    .line 1914
    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(B)V

    .line 1917
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 1918
    invoke-static/range {p1 .. p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1919
    :goto_37
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_132

    .line 1920
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v1

    .line 1921
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v2

    .line 1922
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v1

    .line 1923
    iget-object v5, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_12b

    const/4 v5, 0x1

    move v6, v5

    :goto_53
    const/16 v7, 0x8

    if-gt v6, v7, :cond_12b

    .line 1925
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 1926
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v8

    add-int/2addr v8, v1

    .line 1927
    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-virtual {v0, v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainHeightUnlocked(II)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 1928
    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v9

    .line 1929
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-virtual {v0, v4, v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v10

    if-eqz v10, :cond_82

    goto :goto_88

    :cond_82
    move-object/from16 v10, p4

    move/from16 p1, v5

    goto/16 :goto_122

    .line 1930
    :cond_88
    :goto_88
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v10

    if-eqz v10, :cond_94

    move-object/from16 v10, p4

    .line 1931
    invoke-virtual {v0, v4, v7, v8, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    goto :goto_96

    :cond_94
    move-object/from16 v10, p4

    .line 1933
    :goto_96
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v11

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v5

    div-int/lit8 v11, v11, 0x2

    .line 1934
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v12

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v13

    sub-int/2addr v12, v13

    add-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    .line 1935
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v13

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    .line 1936
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v14

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    .line 1937
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v15

    neg-int v15, v15

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v15, v5

    div-int/lit8 v15, v15, 0x2

    .line 1938
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    neg-int v4, v4

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v16

    sub-int v4, v4, v16

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    move/from16 p1, v5

    .line 1939
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    neg-int v5, v5

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v16

    sub-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    .line 1940
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    neg-int v0, v0

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v16

    add-int v0, v0, v16

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 1941
    invoke-virtual {v9, v11, v12}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result v11

    invoke-virtual {v9, v15, v4, v11}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    move-result v4

    .line 1942
    invoke-virtual {v9, v13, v14}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result v11

    invoke-virtual {v9, v5, v0, v11}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(IIB)Z

    move-result v0

    or-int/2addr v0, v4

    if-eqz v0, :cond_122

    .line 1944
    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v0

    .line 1945
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v4

    if-nez v4, :cond_122

    .line 1946
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_122
    :goto_122
    mul-int/lit8 v6, v6, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p1

    goto/16 :goto_53

    :cond_12b
    move-object/from16 v10, p4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_37

    :cond_132
    return-void
.end method

.method public final setTileDestroyed(IIILinfo/flowersoft/theotown/draft/BuildingDraft;Lvm2/LuaValue;)V
    .registers 15

    .line 1279
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 1280
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v1

    move v2, p1

    :goto_9
    add-int v3, p1, v0

    if-ge v2, v3, :cond_30

    move v3, p2

    :goto_e
    add-int v4, p2, v1

    if-ge v3, v4, :cond_2d

    .line 1284
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 1285
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_29

    .line 1286
    :cond_1f
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-boolean v4, p4, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v4, :cond_2a

    :goto_29
    return-void

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_30
    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v4, p4

    move-object v8, p5

    .line 1290
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    return-void
.end method

.method public final setTileDestroyed(IIZZZZLvm2/LuaValue;)V
    .registers 14

    .line 1249
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1254
    :cond_7
    const-string v0, "destroyed"

    if-eqz p4, :cond_1d

    .line 1255
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " tree"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_56

    :cond_1d
    if-eqz p5, :cond_31

    .line 1257
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " building"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_56

    :cond_31
    if-eqz p6, :cond_45

    .line 1259
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " road"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_56

    .line 1261
    :cond_45
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " plain"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_56
    if-eqz p3, :cond_69

    .line 1265
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " radioactive"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1268
    :cond_69
    const-class p5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p4, p5}, Linfo/flowersoft/theotown/resources/Drafts;->getRandomDraftWithTag(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez p4, :cond_83

    .line 1271
    sget-object p4, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    if-eqz p3, :cond_7a

    const-string p3, "$destroyedtileradioactive00"

    goto :goto_7c

    :cond_7a
    const-string p3, "$destroyedtile"

    :goto_7c
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    :cond_83
    move-object v4, p4

    .line 1274
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object p4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p7

    .line 1275
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTileDestroyed(IIILinfo/flowersoft/theotown/draft/BuildingDraft;Lvm2/LuaValue;)V

    return-void
.end method

.method public tryToPlaceCrater(Linfo/flowersoft/theotown/draft/BuildingDraft;IILvm2/LuaValue;)V
    .registers 14

    const/4 v4, 0x0

    .line 1214
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 1215
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v6

    .line 1217
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_63

    .line 1218
    :cond_12
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v1

    move v2, p2

    :goto_1d
    add-int v7, p2, v0

    if-ge v2, v7, :cond_67

    move v3, p3

    :goto_22
    add-int v5, p3, v6

    if-ge v3, v5, :cond_64

    .line 1222
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1223
    iget-object v5, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 1224
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v7

    .line 1226
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v8

    if-eq v1, v8, :cond_4b

    :cond_46
    iget-boolean v8, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v8, :cond_4b

    goto :goto_63

    .line 1229
    :cond_4b
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    if-eqz v5, :cond_55

    iget-boolean v5, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-nez v5, :cond_63

    :cond_55
    if-eqz v7, :cond_60

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    iget-boolean v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-nez v5, :cond_60

    goto :goto_63

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_63
    :goto_63
    return-void

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_67
    move v0, p2

    :goto_68
    if-ge v0, v7, :cond_78

    move v1, p3

    :goto_6b
    add-int v2, p3, v6

    if-ge v1, v2, :cond_75

    .line 1240
    invoke-virtual {p0, v0, v1, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_78
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1244
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    return-void
.end method

.method public updateFenceOnTile(II)V
    .registers 5

    .line 2180
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    .line 2182
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 2183
    invoke-virtual {p0, v1, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2184
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    return-void
.end method

.method public updateZoneSizeForInfluencedTiles(IIII)V
    .registers 5

    add-int/lit8 p1, p1, -0x11

    add-int/lit8 p2, p2, -0x11

    add-int/lit8 p3, p3, 0x12

    add-int/lit8 p4, p4, 0x12

    .line 1712
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->calculateZoneSize(IIII)V

    return-void
.end method

.method public upgrade(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;Lvm2/LuaValue;)V
    .registers 8

    .line 1527
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityModifier;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->appendUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;J)V

    .line 1529
    iget-wide v0, p2, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1b

    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    :cond_1b
    return-void
.end method
